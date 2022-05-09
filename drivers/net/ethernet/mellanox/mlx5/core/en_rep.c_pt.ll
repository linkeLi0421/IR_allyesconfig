; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlx5/core/en_rep.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlx5/core/en_rep.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.static_call_key = type { ptr }
%struct.atomic_t = type { i32 }
%struct.trace_event_fields = type { ptr, %union.anon.252 }
%union.anon.252 = type { %struct.anon.253 }
%struct.anon.253 = type { ptr, i32, i32, i32, i32 }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.254, %struct.trace_event, ptr, ptr, %union.anon.255, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.254 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.255 = type { ptr }
%union.anon.256 = type { %struct.bpf_raw_event_map }
%struct.bpf_raw_event_map = type { ptr, ptr, i32, i32, [16 x i8] }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.auxiliary_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.auxiliary_device_id = type { [32 x i8], i32 }
%struct.mlx5_eswitch_rep_ops = type { ptr, ptr, ptr, ptr }
%struct.mlx5e_profile = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i32 }
%struct.mlx5e_rx_handlers = type { ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mlx5e_stats_grp = type { i16, ptr, ptr, ptr, ptr }
%struct.counter_desc = type { [32 x i8], i32 }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.mlx5e_neigh_hash_entry = type { %struct.rhash_head, %struct.mlx5e_neigh, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.refcount_struct, i32, %struct.callback_head }
%struct.rhash_head = type { ptr }
%struct.mlx5e_neigh = type { %union.anon.0, i32 }
%union.anon.0 = type { %struct.in6_addr }
%struct.in6_addr = type { %union.anon.1 }
%union.anon.1 = type { [4 x i32] }
%struct.spinlock = type { %union.anon.20 }
%union.anon.20 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.21 }
%union.anon.21 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.callback_head = type { ptr, ptr }
%struct.trace_event_raw_mlx5e_rep_neigh_update = type { %struct.trace_entry, i32, [6 x i8], [4 x i8], [16 x i8], i8, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.mlx5e_priv = type { ptr, ptr, [8 x i32], %struct.mlx5e_dcbx_dp, i32, i32, %struct.mutex, [48 x i8], %struct.mlx5e_rq, %struct.mlx5e_channels, [2 x [8 x i32]], ptr, ptr, %struct.mlx5e_flow_steering, ptr, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.mlx5_nb, ptr, ptr, ptr, %struct.mlx5e_stats, ptr, [12 x i8], %struct.mlx5e_channel_stats, %struct.mlx5e_ptp_stats, i16, i16, i8, i8, i8, %struct.hwtstamp_config, i16, i16, %struct.notifier_block, %struct.notifier_block, i32, %struct.udp_tunnel_nic_info, %struct.mlx5e_dcbx, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mlx5e_xsk, %struct.mlx5e_scratchpad, %struct.mlx5e_htb, ptr, [16 x i8] }
%struct.mlx5e_dcbx_dp = type { [64 x i8], i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mlx5e_rq = type { %union.anon.191, %struct.anon.205, ptr, ptr, ptr, [48 x i8], %struct.mlx5e_cq, %struct.mlx5e_cq_decomp, %struct.mlx5e_page_cache, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.dim, ptr, ptr, [1 x i32], ptr, ptr, %struct.work_struct, %struct.mlx5_wq_ctrl, i32, i8, i32, ptr, i32, %struct.mlx5e_dma_info, [72 x i8], %struct.xdp_rxq_info, ptr, [124 x i8] }
%union.anon.191 = type { %struct.anon.198 }
%struct.anon.198 = type { %struct.mlx5_wq_ll, %struct.mlx5e_umr_wqe, ptr, ptr, i16, i16, i8, i8, i8, i8, ptr }
%struct.mlx5_wq_ll = type { %struct.mlx5_frag_buf_ctrl, ptr, ptr, i16, i16, i16 }
%struct.mlx5_frag_buf_ctrl = type { ptr, i32, i16, i16, i8, i8, i8 }
%struct.mlx5e_umr_wqe = type { %struct.mlx5_wqe_ctrl_seg, %struct.mlx5_wqe_umr_ctrl_seg, %struct.mlx5_mkey_seg, %union.anon.200 }
%struct.mlx5_wqe_ctrl_seg = type { i32, i32, i8, [2 x i8], i8, %union.anon.3 }
%union.anon.3 = type { i32 }
%struct.mlx5_wqe_umr_ctrl_seg = type { i8, [3 x i8], i16, %union.anon.199, i64, i32, [28 x i8] }
%union.anon.199 = type { i16 }
%struct.mlx5_mkey_seg = type { i8, i8, i8, i8, i32, [4 x i8], i32, i64, i64, i32, [16 x i8], i32, [3 x i8], i8, [4 x i8] }
%union.anon.200 = type { %struct.anon.201 }
%struct.anon.201 = type { %struct.anon.202, [0 x %struct.mlx5_mtt] }
%struct.anon.202 = type {}
%struct.mlx5_mtt = type { i64 }
%struct.anon.205 = type { i16, i32, i8 }
%struct.mlx5e_cq = type { %struct.mlx5_cqwq, i16, ptr, %struct.mlx5_core_cq, ptr, ptr, ptr, ptr, %struct.mlx5_wq_ctrl, [24 x i8] }
%struct.mlx5_cqwq = type { %struct.mlx5_frag_buf_ctrl, ptr, i32 }
%struct.mlx5_core_cq = type { i32, i32, ptr, ptr, ptr, %struct.refcount_struct, %struct.completion, i32, i32, ptr, ptr, i32, i32, ptr, i32, %struct.anon.188, i32, %struct.list_head, ptr, i16 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.anon.188 = type { %struct.list_head, ptr, ptr }
%struct.mlx5e_cq_decomp = type { %struct.mlx5_cqe64, [8 x %struct.mlx5_mini_cqe8], i8, i16, i16, [122 x i8] }
%struct.mlx5_cqe64 = type { i8, i8, i16, %union.anon.194, i32, i8, i8, [2 x i8], i16, i16, i32, i8, i8, i16, i32, %union.anon.197, [4 x i8], i32, i32, i32, i32, i16, i8, i8 }
%union.anon.194 = type { %struct.anon.195 }
%struct.anon.195 = type { i8, i8, i16, i32 }
%union.anon.197 = type { i32 }
%struct.mlx5_mini_cqe8 = type { %union.anon.206, i32 }
%union.anon.206 = type { i32 }
%struct.mlx5e_page_cache = type { i32, i32, [256 x %struct.mlx5e_dma_info] }
%struct.dim = type { i8, %struct.dim_stats, %struct.dim_sample, %struct.dim_sample, %struct.work_struct, ptr, i8, i8, i8, i8, i8, i8 }
%struct.dim_stats = type { i32, i32, i32, i32, i32 }
%struct.dim_sample = type { i64, i32, i32, i16, i32 }
%struct.mlx5_wq_ctrl = type { ptr, %struct.mlx5_frag_buf, %struct.mlx5_db }
%struct.mlx5_frag_buf = type { ptr, i32, i32, i8 }
%struct.mlx5_db = type { ptr, %union.anon.189, i32, i32 }
%union.anon.189 = type { ptr }
%struct.mlx5e_dma_info = type { i32, %union.anon.193 }
%union.anon.193 = type { ptr }
%struct.xdp_rxq_info = type { ptr, i32, i32, %struct.xdp_mem_info, i32, [104 x i8] }
%struct.xdp_mem_info = type { i32, i32 }
%struct.mlx5e_channels = type { ptr, ptr, i32, %struct.mlx5e_params }
%struct.mlx5e_params = type { i8, i8, i8, i16, %struct.anon.224, i8, i8, %struct.dim_cq_moder, %struct.dim_cq_moder, %struct.mlx5e_packet_merge_param, i8, i8, i8, i8, i8, i32, ptr, ptr, i32, i32, i8 }
%struct.anon.224 = type { i16, i8, [16 x %struct.netdev_tc_txq], %struct.anon.225 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.anon.225 = type { ptr }
%struct.dim_cq_moder = type { i16, i16, i16, i8 }
%struct.mlx5e_packet_merge_param = type { i32, i32, %struct.anon.226 }
%struct.anon.226 = type { i8, i8 }
%struct.mlx5e_flow_steering = type { ptr, ptr, %struct.mlx5e_ethtool_steering, %struct.mlx5e_tc_table, %struct.mlx5e_promisc_table, ptr, %struct.mlx5e_l2_table, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mlx5e_ethtool_steering = type { [7 x %struct.mlx5e_ethtool_table], [4 x %struct.mlx5e_ethtool_table], %struct.list_head, i32 }
%struct.mlx5e_ethtool_table = type { ptr, i32 }
%struct.mlx5e_tc_table = type { %struct.mutex, ptr, ptr, ptr, %struct.rhashtable, %struct.mod_hdr_tbl, %struct.mutex, [256 x %struct.hlist_head], %struct.notifier_block, %struct.netdev_net_notifier, ptr, ptr }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
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
%struct.mlx5_core_dev = type { ptr, i32, ptr, %struct.mutex, i32, i8, [64 x i8], %struct.mlx5_cmd, %struct.anon.167, ptr, i64, i32, ptr, i32, i32, %struct.mutex, i32, %struct.mlx5_priv, %struct.mlx5_profile, i32, %struct.mlx5e_resources, ptr, ptr, ptr, %struct.anon.178, ptr, ptr, %struct.mlx5_clock, ptr, ptr, ptr, i32, ptr }
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
%struct.mlx5_profile = type { i64, i8, [23 x %struct.anon.177] }
%struct.anon.177 = type { i32, i32 }
%struct.mlx5e_resources = type { %struct.mlx5e_hw_objs, %struct.devlink_port, ptr }
%struct.mlx5e_hw_objs = type { i32, %struct.mlx5_td, i32, %struct.mlx5_sq_bfreg }
%struct.mlx5_td = type { %struct.mutex, %struct.list_head, i32 }
%struct.mlx5_sq_bfreg = type { ptr, ptr, i8, i32, i32 }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.150 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.150 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%struct.anon.178 = type { %struct.mlx5_rsvd_gids, i32 }
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
%struct.mlx5e_txqsq = type { i16, i16, i32, %struct.dim, [120 x i8], i16, i16, i32, %struct.mlx5e_tx_mpwqe, [108 x i8], %struct.mlx5e_cq, %struct.mlx5_wq_cyc, i32, ptr, %struct.anon.190, ptr, ptr, i32, i16, i8, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.mlx5_wq_ctrl, i32, i32, i32, %struct.work_struct, ptr, ptr, [44 x i8] }
%struct.mlx5e_tx_mpwqe = type { ptr, i32, i8, i8, i8 }
%struct.mlx5_wq_cyc = type { %struct.mlx5_frag_buf_ctrl, ptr, i16, i16, i16 }
%struct.anon.190 = type { ptr, %struct.mlx5e_skb_fifo, ptr }
%struct.mlx5e_skb_fifo = type { ptr, ptr, ptr, i16 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mlx5e_xdpsq = type { i32, i16, [122 x i8], i32, i16, ptr, %struct.mlx5e_tx_mpwqe, [104 x i8], %struct.mlx5e_cq, ptr, %struct.mlx5_wq_cyc, ptr, ptr, ptr, %struct.anon.223, ptr, i32, ptr, i32, i8, i32, i32, %struct.mlx5_wq_ctrl, ptr, [124 x i8] }
%struct.anon.223 = type { ptr, %struct.mlx5e_xdp_info_fifo }
%struct.mlx5e_xdp_info_fifo = type { ptr, ptr, ptr, i32 }
%struct.mlx5e_icosq = type { i16, i16, ptr, [120 x i8], %struct.mlx5e_cq, %struct.anon.209, %struct.mlx5_wq_cyc, ptr, i32, i16, i32, ptr, %struct.mlx5_wq_ctrl, ptr, %struct.work_struct, [120 x i8] }
%struct.anon.209 = type { ptr }
%struct.mlx5_eswitch = type { ptr, %struct.mlx5_nb, %struct.mlx5_eswitch_fdb, [256 x %struct.hlist_head], %struct.esw_mc_addr, ptr, %struct.xarray, i32, i32, i32, %struct.mutex, %struct.rw_semaphore, %struct.atomic64_t, %struct.anon.174, ptr, %struct.mlx5_esw_offload, i32, i16, i16, %struct.mlx5_esw_functions, %struct.anon.176, %struct.blocking_notifier_head, %struct.lock_class_key }
%struct.mlx5_eswitch_fdb = type { %union.anon.169, i32 }
%union.anon.169 = type { %struct.offloads_fdb }
%struct.offloads_fdb = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.anon.173, ptr }
%struct.anon.173 = type { [256 x %struct.hlist_head], %struct.mutex }
%struct.esw_mc_addr = type { %struct.l2addr_node, ptr, i32 }
%struct.l2addr_node = type { %struct.hlist_node, [6 x i8] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic64_t = type { i64 }
%struct.anon.174 = type { i32, ptr, %struct.list_head, %struct.refcount_struct }
%struct.mlx5_esw_offload = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.xarray, %struct.list_head, %struct.mutex, %struct.mutex, [256 x %struct.hlist_head], %struct.mutex, [256 x %struct.hlist_head], %struct.mod_hdr_tbl, [256 x %struct.hlist_head], %struct.mutex, %struct.xarray, [2 x ptr], i8, %struct.atomic64_t, i32, %struct.ida, i32 }
%struct.mlx5_esw_functions = type { %struct.mlx5_nb, i16 }
%struct.anon.176 = type { i32 }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.lock_class_key = type { %union.anon.2 }
%union.anon.2 = type { %struct.hlist_node }
%struct.mlx5e_rep_priv = type { ptr, %struct.mlx5e_neigh_update_table, ptr, ptr, ptr, %struct.list_head, %struct.mlx5_rep_uplink_priv, %struct.rtnl_link_stats64 }
%struct.mlx5e_neigh_update_table = type { %struct.rhashtable, %struct.list_head, %struct.mutex, %struct.notifier_block, %struct.delayed_work, i32 }
%struct.mlx5_rep_uplink_priv = type { %struct.rhashtable, %struct.list_head, %struct.mlx5_tun_entropy, %struct.mutex, %struct.list_head, %struct.work_struct, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mlx5_tun_entropy = type { ptr, i32, i32, i8, %struct.mutex }
%struct.mlx5e_rep_sq = type { ptr, ptr, i32, %struct.list_head }
%struct.mlx5_eswitch_rep = type { [2 x %struct.mlx5_eswitch_rep_data], i16, i16, i16, i32, ptr }
%struct.mlx5_eswitch_rep_data = type { ptr, %struct.atomic_t }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.6, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.165, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.6 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.165 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.mlx5_flow_destination = type { i32, %union.anon.170 }
%union.anon.170 = type { %struct.anon.171 }
%struct.anon.171 = type { i16, i16, ptr, i8 }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, ptr, i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }
%struct.mlx5_adev = type { %struct.auxiliary_device, ptr, i32 }
%struct.auxiliary_device = type { %struct.device, ptr, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.87, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.29 }
%struct.llist_node = type { ptr }
%union.anon.29 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.31 }
%union.anon.31 = type { %struct.anon.32 }
%struct.anon.32 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.87 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.udp_tunnel_nic_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mlx5_flow_table_attr = type { i32, i32, i32, i32, ptr, %struct.anon.264 }
%struct.anon.264 = type { i32, i32 }
%struct.ttc_params = type { ptr, %struct.mlx5_flow_table_attr, [11 x %struct.mlx5_flow_destination], [1 x i32], i8, [1 x i32], [6 x %struct.mlx5_flow_destination] }
%struct.mlx5_eqe = type { i8, i8, i8, i8, [7 x i32], %union.ev_data, i16, i8, i8 }
%union.ev_data = type <{ %struct.mlx5_eqe_gpio, [12 x i8] }>
%struct.mlx5_eqe_gpio = type { [2 x i32], i64 }
%struct.ifla_vf_stats = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }
%struct.mlx5_init_seg = type { i32, i32, [2 x i32], i32, i32, i32, [120 x i32], i32, %struct.health_buffer, [878 x i32], i32, i32, i32, i32, [2 x i32], i32, [11 x i32], i32, i32, [1006 x i32], i64, i32, i32 }
%struct.health_buffer = type { [6 x i32], [2 x i32], i32, i32, [1 x i32], i32, i32, i32, i8, [3 x i8], i8, i8, i16 }

@__tpstrtab_mlx5e_rep_neigh_update = internal constant [23 x i8] c"mlx5e_rep_neigh_update\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_mlx5e_rep_neigh_update = dso_local global %struct.static_call_key { ptr @__traceiter_mlx5e_rep_neigh_update }, align 4
@__tracepoint_mlx5e_rep_neigh_update = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_mlx5e_rep_neigh_update, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_mlx5e_rep_neigh_update, ptr null, ptr @__traceiter_mlx5e_rep_neigh_update, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_mlx5e_rep_neigh_update = internal constant ptr @__tracepoint_mlx5e_rep_neigh_update, section "__tracepoints_ptrs", align 4
@str__mlx5__trace_system_name = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mlx5\00", [27 x i8] zeroinitializer }, align 32
@trace_event_fields_mlx5e_rep_neigh_update = internal global { [6 x %struct.trace_event_fields], [48 x i8] } { [6 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.3, %union.anon.252 { %struct.anon.253 { ptr @.str.4, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.252 { %struct.anon.253 { ptr @.str.6, i32 6, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.7, %union.anon.252 { %struct.anon.253 { ptr @.str.8, i32 4, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.9, %union.anon.252 { %struct.anon.253 { ptr @.str.10, i32 16, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.11, %union.anon.252 { %struct.anon.253 { ptr @.str.12, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [48 x i8] zeroinitializer }, align 32
@event_class_mlx5e_rep_neigh_update = internal global %struct.trace_event_class { ptr @str__mlx5__trace_system_name, ptr @trace_event_raw_event_mlx5e_rep_neigh_update, ptr @perf_trace_mlx5e_rep_neigh_update, ptr @trace_event_reg, ptr @trace_event_fields_mlx5e_rep_neigh_update, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_mlx5e_rep_neigh_update, i64 24), ptr getelementptr (i8, ptr @event_class_mlx5e_rep_neigh_update, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_mlx5e_rep_neigh_update = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_mlx5e_rep_neigh_update, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_mlx5e_rep_neigh_update = internal global { [134 x i8], [58 x i8] } { [134 x i8] c"\22netdev: %s MAC: %pM IPv4: %pI4 IPv6: %pI6c neigh_connected=%d\0A\22, __get_str(devname), REC->ha, REC->v4, REC->v6, REC->neigh_connected\00", [58 x i8] zeroinitializer }, align 32
@event_mlx5e_rep_neigh_update = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_mlx5e_rep_neigh_update, %union.anon.254 { ptr @__tracepoint_mlx5e_rep_neigh_update }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_mlx5e_rep_neigh_update }, ptr @print_fmt_mlx5e_rep_neigh_update, ptr null, %union.anon.255 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_mlx5e_rep_neigh_update = internal global ptr @event_mlx5e_rep_neigh_update, section "_ftrace_events", align 4
@__bpf_trace_tp_map_mlx5e_rep_neigh_update = internal global %union.anon.256 { %struct.bpf_raw_event_map { ptr @__tracepoint_mlx5e_rep_neigh_update, ptr @__bpf_trace_mlx5e_rep_neigh_update, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@.str = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to add SQs FWD rules %d\0A\00", [32 x i8] zeroinitializer }, align 32
@mlx5e_netdev_ops = external dso_local constant %struct.net_device_ops, align 4
@mlx5e_netdev_ops_rep = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @mlx5e_rep_open, ptr @mlx5e_rep_close, ptr @mlx5e_xmit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mlx5e_rep_change_mtu, ptr null, ptr null, ptr @mlx5e_rep_get_stats, ptr @mlx5e_rep_has_offload_stats, ptr @mlx5e_rep_get_offload_stats, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mlx5e_rep_setup_tc, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mlx5e_rep_change_carrier, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mlx5e_rep_get_devlink_port, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@mlx5e_rep_driver = internal global { %struct.auxiliary_driver, [56 x i8] } { %struct.auxiliary_driver { ptr @mlx5e_rep_probe, ptr @mlx5e_rep_remove, ptr null, ptr null, ptr null, ptr @.str.14, %struct.device_driver zeroinitializer, ptr @mlx5e_rep_id_table }, [56 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mlx5_core\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"(null)\00", [25 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"__data_loc char[]\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"devname\00", [24 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"u8[6]\00", [26 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"ha\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"u8[4]\00", [26 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"v4\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"u8[16]\00", [25 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"v6\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"bool\00", [27 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"neigh_connected\00", [16 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"netdev: %s MAC: %pM IPv4: %pI4 IPv6: %pI6c neigh_connected=%d\0A\0A\00", [32 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"eth-rep\00", [24 x i8] zeroinitializer }, align 32
@mlx5e_rep_id_table = internal constant { [2 x %struct.auxiliary_device_id], [56 x i8] } { [2 x %struct.auxiliary_device_id] [%struct.auxiliary_device_id { [32 x i8] c"mlx5_core.eth-rep\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.auxiliary_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@rep_ops = internal constant { %struct.mlx5_eswitch_rep_ops, [16 x i8] } { %struct.mlx5_eswitch_rep_ops { ptr @mlx5e_vport_rep_load, ptr @mlx5e_vport_rep_unload, ptr @mlx5e_vport_rep_get_proto_dev, ptr @mlx5e_vport_rep_event }, [16 x i8] zeroinitializer }, align 32
@mlx5e_uplink_rep_profile = internal constant { %struct.mlx5e_profile, [56 x i8] } { %struct.mlx5e_profile { ptr @mlx5e_init_ul_rep, ptr @mlx5e_cleanup_rep, ptr @mlx5e_init_ul_rep_rx, ptr @mlx5e_cleanup_ul_rep_rx, ptr @mlx5e_init_rep_tx, ptr @mlx5e_cleanup_rep_tx, ptr @mlx5e_uplink_rep_enable, ptr @mlx5e_uplink_rep_disable, ptr @mlx5e_update_rep_rx, ptr @mlx5e_stats_update_ndo_stats, ptr @mlx5e_update_carrier, ptr null, ptr @mlx5e_ul_rep_stats_grps_num, ptr @mlx5e_ul_rep_stats_grps, ptr @mlx5e_rx_handlers_rep, i32 8, i8 2, i32 0 }, [56 x i8] zeroinitializer }, align 32
@mlx5e_ul_rep_stats_grps = internal constant { [16 x ptr], [32 x i8] } { [16 x ptr] [ptr @mlx5e_stats_grp_sw, ptr @mlx5e_stats_grp_qcnt, ptr @mlx5e_stats_grp_vnic_env, ptr @mlx5e_stats_grp_vport, ptr @mlx5e_stats_grp_802_3, ptr @mlx5e_stats_grp_2863, ptr @mlx5e_stats_grp_2819, ptr @mlx5e_stats_grp_phy, ptr @mlx5e_stats_grp_eth_ext, ptr @mlx5e_stats_grp_pcie, ptr @mlx5e_stats_grp_per_prio, ptr @mlx5e_stats_grp_pme, ptr @mlx5e_stats_grp_channels, ptr @mlx5e_stats_grp_per_port_buff_congest, ptr @mlx5e_stats_grp_ipsec_sw, ptr @mlx5e_stats_grp_ipsec_hw], [32 x i8] zeroinitializer }, align 32
@mlx5e_rx_handlers_rep = external dso_local constant %struct.mlx5e_rx_handlers, align 4
@mlx5e_init_ul_rep._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.17, i32 687, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"%s:%d:(pid %d): Uplink rep IPsec initialization failed, %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mlx5e_init_ul_rep\00", [46 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"drivers/net/ethernet/mellanox/mlx5/core/en_rep.c\00", [47 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mlx5e_init_ul_rep._entry_ptr = internal global ptr @mlx5e_init_ul_rep._entry, section ".printk_index", align 4
@mlx5e_init_rep_rx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.17, i32 820, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s:%d:(pid %d): open drop rq failed, %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mlx5e_init_rep_rx\00", [46 x i8] zeroinitializer }, align 32
@mlx5e_init_rep_rx._entry_ptr = internal global ptr @mlx5e_init_rep_rx._entry, section ".printk_index", align 4
@.str.22 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Failed to create rep ttc table, err=%d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to get reps offloads namespace\0A\00", [57 x i8] zeroinitializer }, align 32
@mlx5e_init_rep_tx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.17, i32 934, ptr @.str.26, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s:%d:(pid %d): create tises failed, %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mlx5e_init_rep_tx\00", [46 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@mlx5e_init_rep_tx._entry_ptr = internal global ptr @mlx5e_init_rep_tx._entry, section ".printk_index", align 4
@mlx5e_init_uplink_rep_tx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.17, i32 915, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"%s:%d:(pid %d): Failed to register netdev notifier, err: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mlx5e_init_uplink_rep_tx\00", [39 x i8] zeroinitializer }, align 32
@mlx5e_init_uplink_rep_tx._entry_ptr = internal global ptr @mlx5e_init_uplink_rep_tx._entry, section ".printk_index", align 4
@udp_tunnel_nic_ops = external dso_local local_unnamed_addr global ptr, align 4
@mlx5e_stats_grp_sw = external dso_local constant %struct.mlx5e_stats_grp, align 4
@mlx5e_stats_grp_qcnt = external dso_local constant %struct.mlx5e_stats_grp, align 4
@mlx5e_stats_grp_vnic_env = external dso_local constant %struct.mlx5e_stats_grp, align 4
@mlx5e_stats_grp_vport = external dso_local constant %struct.mlx5e_stats_grp, align 4
@mlx5e_stats_grp_802_3 = external dso_local constant %struct.mlx5e_stats_grp, align 4
@mlx5e_stats_grp_2863 = external dso_local constant %struct.mlx5e_stats_grp, align 4
@mlx5e_stats_grp_2819 = external dso_local constant %struct.mlx5e_stats_grp, align 4
@mlx5e_stats_grp_phy = external dso_local constant %struct.mlx5e_stats_grp, align 4
@mlx5e_stats_grp_eth_ext = external dso_local constant %struct.mlx5e_stats_grp, align 4
@mlx5e_stats_grp_pcie = external dso_local constant %struct.mlx5e_stats_grp, align 4
@mlx5e_stats_grp_per_prio = external dso_local constant %struct.mlx5e_stats_grp, align 4
@mlx5e_stats_grp_pme = external dso_local constant %struct.mlx5e_stats_grp, align 4
@mlx5e_stats_grp_channels = external dso_local constant %struct.mlx5e_stats_grp, align 4
@mlx5e_stats_grp_per_port_buff_congest = external dso_local constant %struct.mlx5e_stats_grp, align 4
@mlx5e_stats_grp_ipsec_sw = external dso_local constant %struct.mlx5e_stats_grp, align 4
@mlx5e_stats_grp_ipsec_hw = external dso_local constant %struct.mlx5e_stats_grp, align 4
@mlx5e_rep_profile = internal constant { %struct.mlx5e_profile, [56 x i8] } { %struct.mlx5e_profile { ptr @mlx5e_init_rep, ptr @mlx5e_cleanup_rep, ptr @mlx5e_init_rep_rx, ptr @mlx5e_cleanup_rep_rx, ptr @mlx5e_init_rep_tx, ptr @mlx5e_cleanup_rep_tx, ptr @mlx5e_rep_enable, ptr @mlx5e_rep_disable, ptr @mlx5e_update_rep_rx, ptr @mlx5e_stats_update_ndo_stats, ptr null, ptr @mlx5e_rep_max_nch_limit, ptr @mlx5e_rep_stats_grps_num, ptr @mlx5e_rep_stats_grps, ptr @mlx5e_rx_handlers_rep, i32 1, i8 1, i32 0 }, [56 x i8] zeroinitializer }, align 32
@mlx5e_vport_vf_rep_load._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.17, i32 1203, ptr @.str.26, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"%s:%d:(pid %d): Failed to create representor netdev for vport %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mlx5e_vport_vf_rep_load\00", [40 x i8] zeroinitializer }, align 32
@mlx5e_vport_vf_rep_load._entry_ptr = internal global ptr @mlx5e_vport_vf_rep_load._entry, section ".printk_index", align 4
@.str.32 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Failed to attach representor netdev for vport %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Failed to register representor netdev for vport %d\0A\00", [44 x i8] zeroinitializer }, align 32
@mlx5e_rep_stats_grps = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @mlx5e_stats_grp_sw_rep, ptr @mlx5e_stats_grp_vport_rep], [24 x i8] zeroinitializer }, align 32
@mlx5e_stats_grp_sw_rep = internal constant { %struct.mlx5e_stats_grp, [44 x i8] } { %struct.mlx5e_stats_grp { i16 0, ptr @mlx5e_stats_grp_sw_rep_num_stats, ptr @mlx5e_stats_grp_sw_rep_fill_strings, ptr @mlx5e_stats_grp_sw_rep_fill_stats, ptr @mlx5e_stats_grp_sw_rep_update_stats }, [44 x i8] zeroinitializer }, align 32
@mlx5e_stats_grp_vport_rep = internal constant { %struct.mlx5e_stats_grp, [44 x i8] } { %struct.mlx5e_stats_grp { i16 2, ptr @mlx5e_stats_grp_vport_rep_num_stats, ptr @mlx5e_stats_grp_vport_rep_fill_strings, ptr @mlx5e_stats_grp_vport_rep_fill_stats, ptr @mlx5e_stats_grp_vport_rep_update_stats }, [44 x i8] zeroinitializer }, align 32
@sw_rep_stats_desc = internal constant { [4 x %struct.counter_desc], [48 x i8] } { [4 x %struct.counter_desc] [%struct.counter_desc { [32 x i8] c"rx_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.counter_desc { [32 x i8] c"rx_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8 }, %struct.counter_desc { [32 x i8] c"tx_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 16 }, %struct.counter_desc { [32 x i8] c"tx_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 24 }], [48 x i8] zeroinitializer }, align 32
@vport_rep_stats_desc = internal constant { [4 x %struct.counter_desc], [48 x i8] } { [4 x %struct.counter_desc] [%struct.counter_desc { [32 x i8] c"vport_rx_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.counter_desc { [32 x i8] c"vport_rx_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 16 }, %struct.counter_desc { [32 x i8] c"vport_tx_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8 }, %struct.counter_desc { [32 x i8] c"vport_tx_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 24 }], [48 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"vport %d error %d reading stats\0A\00", [63 x i8] zeroinitializer }, align 32
@mlx5e_rep_ethtool_ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 1587, i32 0, ptr @mlx5e_rep_get_drvinfo, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ethtool_op_get_link, ptr null, ptr null, ptr null, ptr null, ptr @mlx5e_rep_get_coalesce, ptr @mlx5e_rep_set_coalesce, ptr @mlx5e_rep_get_ringparam, ptr @mlx5e_rep_set_ringparam, ptr null, ptr null, ptr null, ptr null, ptr @mlx5e_rep_get_strings, ptr null, ptr @mlx5e_rep_get_ethtool_stats, ptr null, ptr null, ptr null, ptr null, ptr @mlx5e_rep_get_sset_count, ptr null, ptr null, ptr null, ptr null, ptr @mlx5e_rep_get_rxfh_key_size, ptr @mlx5e_rep_get_rxfh_indir_size, ptr null, ptr null, ptr null, ptr null, ptr @mlx5e_rep_get_channels, ptr @mlx5e_rep_set_channels, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@mlx5e_rep_driver_name = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mlx5e_rep\00", [22 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%d.%d.%04d (%.16s)\00", [45 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 10]
@__sancov_gen_cov_switch_values.36 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 10]
@__sancov_gen_cov_switch_values.37 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.38 = internal global [4 x i64] [i64 2, i64 32, i64 9, i64 129]
@__sancov_gen_cov_switch_values.39 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 4]
@___asan_gen_.40 = private unnamed_addr constant [29 x i8] c"str__mlx5__trace_system_name\00", align 1
@___asan_gen_.41 = private unnamed_addr constant [32 x i8] c"../include/trace/trace_events.h\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 36, i32 1 }
@___asan_gen_.43 = private unnamed_addr constant [42 x i8] c"trace_event_fields_mlx5e_rep_neigh_update\00", align 1
@___asan_gen_.46 = private unnamed_addr constant [46 x i8] c"trace_event_type_funcs_mlx5e_rep_neigh_update\00", align 1
@___asan_gen_.49 = private unnamed_addr constant [33 x i8] c"print_fmt_mlx5e_rep_neigh_update\00", align 1
@___asan_gen_.52 = private unnamed_addr constant [29 x i8] c"event_mlx5e_rep_neigh_update\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 425, i32 29 }
@___asan_gen_.58 = private unnamed_addr constant [21 x i8] c"mlx5e_netdev_ops_rep\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 571, i32 36 }
@___asan_gen_.61 = private unnamed_addr constant [17 x i8] c"mlx5e_rep_driver\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 1401, i32 32 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 1410, i32 9 }
@___asan_gen_.101 = private unnamed_addr constant [70 x i8] c"../drivers/net/ethernet/mellanox/mlx5/core/./diag/en_rep_tracepoint.h\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 14, i32 1 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 1402, i32 10 }
@___asan_gen_.106 = private unnamed_addr constant [19 x i8] c"mlx5e_rep_id_table\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 1394, i32 41 }
@___asan_gen_.109 = private unnamed_addr constant [8 x i8] c"rep_ops\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 1365, i32 42 }
@___asan_gen_.112 = private unnamed_addr constant [25 x i8] c"mlx5e_uplink_rep_profile\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 1128, i32 35 }
@___asan_gen_.115 = private unnamed_addr constant [24 x i8] c"mlx5e_ul_rep_stats_grps\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 1083, i32 26 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 687, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 820, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 718, i32 28 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 744, i32 28 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 934, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 914, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant [18 x i8] c"mlx5e_rep_profile\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 1109, i32 35 }
@___asan_gen_.175 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 1201, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 1222, i32 8 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 1230, i32 8 }
@___asan_gen_.190 = private unnamed_addr constant [21 x i8] c"mlx5e_rep_stats_grps\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 1072, i32 26 }
@___asan_gen_.193 = private unnamed_addr constant [23 x i8] c"mlx5e_stats_grp_sw_rep\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 1068, i32 8 }
@___asan_gen_.196 = private unnamed_addr constant [26 x i8] c"mlx5e_stats_grp_vport_rep\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 1069, i32 8 }
@___asan_gen_.199 = private unnamed_addr constant [18 x i8] c"sw_rep_stats_desc\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 79, i32 34 }
@___asan_gen_.202 = private unnamed_addr constant [21 x i8] c"vport_rep_stats_desc\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 93, i32 34 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 178, i32 29 }
@___asan_gen_.208 = private unnamed_addr constant [22 x i8] c"mlx5e_rep_ethtool_ops\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 295, i32 33 }
@___asan_gen_.211 = private unnamed_addr constant [22 x i8] c"mlx5e_rep_driver_name\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 63, i32 19 }
@___asan_gen_.214 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.215 = private constant [52 x i8] c"../drivers/net/ethernet/mellanox/mlx5/core/en_rep.c\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 74, i32 4 }
@llvm.compiler.used = appending global [69 x ptr] [ptr @__bpf_trace_tp_map_mlx5e_rep_neigh_update, ptr @__event_mlx5e_rep_neigh_update, ptr @__tracepoint_mlx5e_rep_neigh_update, ptr @__tracepoint_ptr_mlx5e_rep_neigh_update, ptr @event_class_mlx5e_rep_neigh_update, ptr @event_mlx5e_rep_neigh_update, ptr @mlx5e_init_rep_rx._entry, ptr @mlx5e_init_rep_rx._entry_ptr, ptr @mlx5e_init_rep_tx._entry, ptr @mlx5e_init_rep_tx._entry_ptr, ptr @mlx5e_init_ul_rep._entry, ptr @mlx5e_init_ul_rep._entry_ptr, ptr @mlx5e_init_uplink_rep_tx._entry, ptr @mlx5e_init_uplink_rep_tx._entry_ptr, ptr @mlx5e_vport_vf_rep_load._entry, ptr @mlx5e_vport_vf_rep_load._entry_ptr, ptr @str__mlx5__trace_system_name, ptr @trace_event_fields_mlx5e_rep_neigh_update, ptr @trace_event_type_funcs_mlx5e_rep_neigh_update, ptr @print_fmt_mlx5e_rep_neigh_update, ptr @.str, ptr @mlx5e_netdev_ops_rep, ptr @mlx5e_rep_driver, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @mlx5e_rep_id_table, ptr @rep_ops, ptr @mlx5e_uplink_rep_profile, ptr @mlx5e_ul_rep_stats_grps, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @mlx5e_rep_profile, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @mlx5e_rep_stats_grps, ptr @mlx5e_stats_grp_sw_rep, ptr @mlx5e_stats_grp_vport_rep, ptr @sw_rep_stats_desc, ptr @vport_rep_stats_desc, ptr @.str.34, ptr @mlx5e_rep_ethtool_ops, ptr @mlx5e_rep_driver_name, ptr @.str.35], section "llvm.metadata"
@0 = internal global [59 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str__mlx5__trace_system_name to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_mlx5e_rep_neigh_update to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_mlx5e_rep_neigh_update to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_mlx5e_rep_neigh_update to i32), i32 134, i32 192, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_mlx5e_rep_neigh_update to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_netdev_ops_rep to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_rep_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_rep_id_table to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rep_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_uplink_rep_profile to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_ul_rep_stats_grps to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_init_ul_rep._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_init_rep_rx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_init_rep_tx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_init_uplink_rep_tx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_rep_profile to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_vport_vf_rep_load._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_rep_stats_grps to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_stats_grp_sw_rep to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_stats_grp_vport_rep to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sw_rep_stats_desc to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vport_rep_stats_desc to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_rep_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_rep_driver_name to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_mlx5e_rep_neigh_update(ptr nocapture readnone %__data, ptr noundef %nhe, ptr noundef %ha, i1 noundef zeroext %neigh_connected) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mlx5e_rep_neigh_update, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

do.body2:                                         ; preds = %do.body2.do.body2_crit_edge, %entry.do.body2_crit_edge
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2.do.body2_crit_edge ], [ %0, %entry.do.body2_crit_edge ]
  %1 = ptrtoint ptr %it_func_ptr.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  tail call void %2(ptr noundef %4, ptr noundef %nhe, ptr noundef %ha, i1 noundef zeroext %neigh_connected) #18
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool10.not = icmp eq ptr %6, null
  br i1 %tobool10.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_mlx5e_rep_neigh_update(ptr noundef %__data, ptr nocapture noundef readonly %nhe, ptr nocapture noundef readonly %ha, i1 noundef zeroext %neigh_connected) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #20
  %frombool = zext i1 %neigh_connected to i8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #18
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !113

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !114

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #18
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %neigh_dev.i = getelementptr inbounds %struct.mlx5e_neigh_hash_entry, ptr %nhe, i32 0, i32 3
  %3 = ptrtoint ptr %neigh_dev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %neigh_dev.i, align 4
  %tobool.not.i50 = icmp eq ptr %4, null
  %spec.select.i = select i1 %tobool.not.i50, ptr @.str.2, ptr %4
  %call.i51 = tail call i32 @strlen(ptr noundef nonnull %spec.select.i) #21
  %add = add i32 %call.i51, 41
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef %add) #18
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %add.i = shl i32 %call.i51, 16
  %or.i = add i32 %add.i, 65575
  %__data_loc_devname = getelementptr inbounds %struct.trace_event_raw_mlx5e_rep_neigh_update, ptr %call3, i32 0, i32 1
  %5 = ptrtoint ptr %__data_loc_devname to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %or.i, ptr %__data_loc_devname, align 4
  %m_neigh = getelementptr inbounds %struct.mlx5e_neigh_hash_entry, ptr %nhe, i32 0, i32 1
  %add.ptr = getelementptr i8, ptr %call3, i32 39
  %6 = ptrtoint ptr %neigh_dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %neigh_dev.i, align 4
  %tobool8.not = icmp eq ptr %7, null
  %spec.select = select i1 %tobool8.not, ptr @.str.2, ptr %7
  %call12 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef nonnull %spec.select) #22
  %neigh_connected14 = getelementptr inbounds %struct.trace_event_raw_mlx5e_rep_neigh_update, ptr %call3, i32 0, i32 5
  %8 = ptrtoint ptr %neigh_connected14 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %frombool, ptr %neigh_connected14, align 2
  %ha16 = getelementptr inbounds %struct.trace_event_raw_mlx5e_rep_neigh_update, ptr %call3, i32 0, i32 2
  %9 = call ptr @memcpy(ptr %ha16, ptr %ha, i32 6)
  %v6 = getelementptr inbounds %struct.trace_event_raw_mlx5e_rep_neigh_update, ptr %call3, i32 0, i32 4
  %family = getelementptr inbounds %struct.mlx5e_neigh_hash_entry, ptr %nhe, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %family, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i32 %11, label %if.end6.if.end26_crit_edge [
    i32 2, label %if.then20
    i32 10, label %if.then23
  ]

if.end6.if.end26_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end26

if.then20:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #20
  %v4 = getelementptr inbounds %struct.trace_event_raw_mlx5e_rep_neigh_update, ptr %call3, i32 0, i32 3
  %13 = ptrtoint ptr %m_neigh to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %m_neigh, align 4
  %15 = ptrtoint ptr %v4 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %v4, align 4
  %16 = ptrtoint ptr %v6 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %v6, align 4
  %arrayidx1.i.i.i = getelementptr %struct.trace_event_raw_mlx5e_rep_neigh_update, ptr %call3, i32 0, i32 4, i32 4
  %17 = ptrtoint ptr %arrayidx1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %arrayidx1.i.i.i, align 4
  %arrayidx2.i.i = getelementptr %struct.trace_event_raw_mlx5e_rep_neigh_update, ptr %call3, i32 0, i32 4, i32 8
  %18 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 65535, ptr %arrayidx2.i.i, align 4
  %arrayidx1.i1.i.i = getelementptr %struct.trace_event_raw_mlx5e_rep_neigh_update, ptr %call3, i32 0, i32 4, i32 12
  %19 = ptrtoint ptr %arrayidx1.i1.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %14, ptr %arrayidx1.i1.i.i, align 4
  br label %if.end26

if.then23:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #20
  %20 = call ptr @memcpy(ptr %v6, ptr %m_neigh, i32 16)
  br label %if.end26

if.end26:                                         ; preds = %if.then23, %if.then20, %if.end6.if.end26_crit_edge
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #18
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_mlx5e_rep_neigh_update(ptr noundef %__data, ptr nocapture noundef readonly %nhe, ptr nocapture noundef readonly %ha, i1 noundef zeroext %neigh_connected) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #20
  %frombool = zext i1 %neigh_connected to i8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #18
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !115
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #18
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !115
  %neigh_dev.i = getelementptr inbounds %struct.mlx5e_neigh_hash_entry, ptr %nhe, i32 0, i32 3
  %2 = ptrtoint ptr %neigh_dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %neigh_dev.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  %spec.select.i = select i1 %tobool.not.i, ptr @.str.2, ptr %3
  %call.i = tail call i32 @strlen(ptr noundef nonnull %spec.select.i) #21
  %add.i = shl i32 %call.i, 16
  %or.i = add i32 %add.i, 65575
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %4 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %perf_events, align 4
  %6 = ptrtoint ptr %5 to i32
  %7 = tail call i32 @llvm.read_register.i32(metadata !103) #18
  %and.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %10
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx, align 4
  %add = add i32 %12, %6
  %13 = inttoptr i32 %add to ptr
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %14 = ptrtoint ptr %prog_array.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %15, null
  br i1 %tobool.i.not, label %land.lhs.true8, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

land.lhs.true8:                                   ; preds = %entry
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %13, align 4
  %tobool.not.i74.not = icmp eq ptr %17, null
  br i1 %tobool.not.i74.not, label %land.lhs.true8.cleanup_crit_edge, label %land.lhs.true8.if.end_crit_edge

land.lhs.true8.if.end_crit_edge:                  ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

land.lhs.true8.cleanup_crit_edge:                 ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true8.if.end_crit_edge, %entry.if.end_crit_edge
  %add13 = add i32 %call.i, 52
  %and = and i32 %add13, -8
  %sub = add i32 %and, -4
  %call14 = call ptr @perf_trace_buf_alloc(i32 noundef %sub, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #18
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %if.end.cleanup_crit_edge, label %if.end17

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end17:                                         ; preds = %if.end
  %18 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %__regs, align 4
  %20 = call ptr @llvm.returnaddress(i32 0) #18
  %21 = ptrtoint ptr %20 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %19, i32 0, i32 15
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %arrayidx.i, align 4
  %23 = call ptr @llvm.frameaddress.p0(i32 0) #18
  %24 = ptrtoint ptr %23 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %19, i32 0, i32 11
  %25 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx2.i, align 4
  %26 = call i32 @llvm.read_register.i32(metadata !103) #18
  %arrayidx4.i = getelementptr [18 x i32], ptr %19, i32 0, i32 13
  %27 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %19, i32 0, i32 16
  %28 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 19, ptr %arrayidx6.i, align 4
  %__data_loc_devname = getelementptr inbounds %struct.trace_event_raw_mlx5e_rep_neigh_update, ptr %call14, i32 0, i32 1
  %29 = ptrtoint ptr %__data_loc_devname to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %or.i, ptr %__data_loc_devname, align 4
  %m_neigh = getelementptr inbounds %struct.mlx5e_neigh_hash_entry, ptr %nhe, i32 0, i32 1
  %add.ptr = getelementptr i8, ptr %call14, i32 39
  %30 = ptrtoint ptr %neigh_dev.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %neigh_dev.i, align 4
  %tobool20.not = icmp eq ptr %31, null
  %spec.select = select i1 %tobool20.not, ptr @.str.2, ptr %31
  %call24 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef nonnull %spec.select) #22
  %neigh_connected26 = getelementptr inbounds %struct.trace_event_raw_mlx5e_rep_neigh_update, ptr %call14, i32 0, i32 5
  %32 = ptrtoint ptr %neigh_connected26 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %frombool, ptr %neigh_connected26, align 2
  %ha28 = getelementptr inbounds %struct.trace_event_raw_mlx5e_rep_neigh_update, ptr %call14, i32 0, i32 2
  %33 = call ptr @memcpy(ptr %ha28, ptr %ha, i32 6)
  %v6 = getelementptr inbounds %struct.trace_event_raw_mlx5e_rep_neigh_update, ptr %call14, i32 0, i32 4
  %family = getelementptr inbounds %struct.mlx5e_neigh_hash_entry, ptr %nhe, i32 0, i32 1, i32 1
  %34 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %family, align 4
  %36 = zext i32 %35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %35, label %if.end17.if.end38_crit_edge [
    i32 2, label %if.then32
    i32 10, label %if.then35
  ]

if.end17.if.end38_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end38

if.then32:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #20
  %v4 = getelementptr inbounds %struct.trace_event_raw_mlx5e_rep_neigh_update, ptr %call14, i32 0, i32 3
  %37 = ptrtoint ptr %m_neigh to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %m_neigh, align 4
  %39 = ptrtoint ptr %v4 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %v4, align 4
  %40 = ptrtoint ptr %v6 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %v6, align 4
  %arrayidx1.i.i.i = getelementptr %struct.trace_event_raw_mlx5e_rep_neigh_update, ptr %call14, i32 0, i32 4, i32 4
  %41 = ptrtoint ptr %arrayidx1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %arrayidx1.i.i.i, align 4
  %arrayidx2.i.i = getelementptr %struct.trace_event_raw_mlx5e_rep_neigh_update, ptr %call14, i32 0, i32 4, i32 8
  %42 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 65535, ptr %arrayidx2.i.i, align 4
  %arrayidx1.i1.i.i = getelementptr %struct.trace_event_raw_mlx5e_rep_neigh_update, ptr %call14, i32 0, i32 4, i32 12
  %43 = ptrtoint ptr %arrayidx1.i1.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %38, ptr %arrayidx1.i1.i.i, align 4
  br label %if.end38

if.then35:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #20
  %44 = call ptr @memcpy(ptr %v6, ptr %m_neigh, i32 16)
  br label %if.end38

if.end38:                                         ; preds = %if.then35, %if.then32, %if.end17.if.end38_crit_edge
  %45 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %rctx, align 4
  %47 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call14, i32 noundef %sub, i32 noundef %46, ptr noundef %__data, i64 noundef 1, ptr noundef %48, ptr noundef %13, ptr noundef null) #18
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %if.end.cleanup_crit_edge, %land.lhs.true8.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_mlx5e_rep_neigh_update(ptr noundef %__data, ptr noundef %nhe, ptr noundef %ha, i1 noundef zeroext %neigh_connected) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  %0 = ptrtoint ptr %nhe to i32
  %conv = zext i32 %0 to i64
  %1 = ptrtoint ptr %ha to i32
  %conv4 = zext i32 %1 to i64
  %conv9 = zext i1 %neigh_connected to i64
  tail call void @bpf_trace_run3(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv9) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5e_add_sqs_fwd_rules(ptr nocapture noundef readonly %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %mdev = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %0 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev, align 64
  %eswitch = getelementptr inbounds %struct.mlx5_core_dev, ptr %1, i32 0, i32 17, i32 28
  %2 = ptrtoint ptr %eswitch to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %eswitch, align 4
  %ppriv = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 43
  %4 = ptrtoint ptr %ppriv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ppriv, align 32
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %channels = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 9
  %num = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 9, i32 2
  %8 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num, align 8
  %mqprio.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 9, i32 3, i32 4
  %10 = ptrtoint ptr %mqprio.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %mqprio.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %cmp.i = icmp eq i16 %11, 0
  br i1 %cmp.i, label %cond.true.i, label %entry.mlx5e_get_dcb_num_tc.exit_crit_edge

entry.mlx5e_get_dcb_num_tc.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %mlx5e_get_dcb_num_tc.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %num_tc.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 9, i32 3, i32 4, i32 1
  %12 = ptrtoint ptr %num_tc.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %num_tc.i, align 2
  %phi.cast = zext i8 %13 to i32
  br label %mlx5e_get_dcb_num_tc.exit

mlx5e_get_dcb_num_tc.exit:                        ; preds = %cond.true.i, %entry.mlx5e_get_dcb_num_tc.exit_crit_edge
  %cond.i = phi i32 [ %phi.cast, %cond.true.i ], [ 1, %entry.mlx5e_get_dcb_num_tc.exit_crit_edge ]
  %mul = mul i32 %9, %cond.i
  %14 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %mul, i32 4) #18
  %15 = extractvalue { i32, i1 } %14, 1
  br i1 %15, label %mlx5e_get_dcb_num_tc.exit.if.then23_crit_edge, label %if.end7.i.i, !prof !114

mlx5e_get_dcb_num_tc.exit.if.then23_crit_edge:    ; preds = %mlx5e_get_dcb_num_tc.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then23

if.end7.i.i:                                      ; preds = %mlx5e_get_dcb_num_tc.exit
  %16 = extractvalue { i32, i1 } %14, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %16, i32 noundef 3520) #23
  %tobool.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool.not, label %if.end7.i.i.if.then23_crit_edge, label %for.cond.preheader

if.end7.i.i.if.then23_crit_edge:                  ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then23

for.cond.preheader:                               ; preds = %if.end7.i.i
  %17 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp66.not = icmp eq i32 %18, 0
  br i1 %cmp66.not, label %for.cond.preheader.for.end20_crit_edge, label %for.body.preheader

for.cond.preheader.for.end20_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end20

for.body.preheader:                               ; preds = %for.cond.preheader
  %19 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %channels, align 128
  %21 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %num, align 8
  br label %for.body

for.body:                                         ; preds = %for.inc18.for.body_crit_edge, %for.body.preheader
  %num_sqs.068 = phi i32 [ %num_sqs.1.lcssa, %for.inc18.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %n.067 = phi i32 [ %inc19, %for.inc18.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr ptr, ptr %20, i32 %n.067
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx, align 4
  %num_tc = getelementptr inbounds %struct.mlx5e_channel, ptr %24, i32 0, i32 11
  %25 = ptrtoint ptr %num_tc to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %num_tc, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %cmp1263.not = icmp eq i8 %26, 0
  br i1 %cmp1263.not, label %for.body.for.inc18_crit_edge, label %for.body.for.body14_crit_edge

for.body.for.body14_crit_edge:                    ; preds = %for.body
  br label %for.body14

for.body.for.inc18_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc18

for.body14:                                       ; preds = %for.body14.for.body14_crit_edge, %for.body.for.body14_crit_edge
  %num_sqs.165 = phi i32 [ %inc, %for.body14.for.body14_crit_edge ], [ %num_sqs.068, %for.body.for.body14_crit_edge ]
  %tc.064 = phi i32 [ %inc17, %for.body14.for.body14_crit_edge ], [ 0, %for.body.for.body14_crit_edge ]
  %sqn = getelementptr %struct.mlx5e_channel, ptr %24, i32 0, i32 2, i32 %tc.064, i32 17
  %27 = ptrtoint ptr %sqn to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %sqn, align 4
  %inc = add i32 %num_sqs.165, 1
  %arrayidx16 = getelementptr i32, ptr %call8.i.i, i32 %num_sqs.165
  %29 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %arrayidx16, align 4
  %inc17 = add nuw nsw i32 %tc.064, 1
  %30 = ptrtoint ptr %num_tc to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %num_tc, align 2
  %conv11 = zext i8 %31 to i32
  %cmp12 = icmp ult i32 %inc17, %conv11
  br i1 %cmp12, label %for.body14.for.body14_crit_edge, label %for.body14.for.inc18_crit_edge

for.body14.for.inc18_crit_edge:                   ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc18

for.body14.for.body14_crit_edge:                  ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body14

for.inc18:                                        ; preds = %for.body14.for.inc18_crit_edge, %for.body.for.inc18_crit_edge
  %num_sqs.1.lcssa = phi i32 [ %num_sqs.068, %for.body.for.inc18_crit_edge ], [ %inc, %for.body14.for.inc18_crit_edge ]
  %inc19 = add nuw i32 %n.067, 1
  %cmp = icmp ult i32 %inc19, %22
  br i1 %cmp, label %for.inc18.for.body_crit_edge, label %for.inc18.for.end20_crit_edge

for.inc18.for.end20_crit_edge:                    ; preds = %for.inc18
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end20

for.inc18.for.body_crit_edge:                     ; preds = %for.inc18
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.end20:                                        ; preds = %for.inc18.for.end20_crit_edge, %for.cond.preheader.for.end20_crit_edge
  %num_sqs.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end20_crit_edge ], [ %num_sqs.1.lcssa, %for.inc18.for.end20_crit_edge ]
  %mode.i = getelementptr inbounds %struct.mlx5_eswitch, ptr %3, i32 0, i32 16
  %32 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %mode.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %33)
  %cmp.not.i = icmp eq i32 %33, 2
  br i1 %cmp.not.i, label %if.end.i, label %for.end20.out.thread53_crit_edge

for.end20.out.thread53_crit_edge:                 ; preds = %for.end20
  call void @__sanitizer_cov_trace_pc() #20
  br label %out.thread53

if.end.i:                                         ; preds = %for.end20
  %34 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %7, align 4
  %36 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %3, align 8
  %devcom.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %37, i32 0, i32 17, i32 32
  %38 = ptrtoint ptr %devcom.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %devcom.i, align 4
  %call1.i = tail call zeroext i1 @mlx5_devcom_is_paired(ptr noundef %39, i32 noundef 0) #18
  br i1 %call1.i, label %if.then2.i, label %if.end.i.if.end7.i_crit_edge

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end7.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  %40 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %3, align 8
  %devcom5.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %41, i32 0, i32 17, i32 32
  %42 = ptrtoint ptr %devcom5.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %devcom5.i, align 4
  %call6.i = tail call ptr @mlx5_devcom_get_peer_data(ptr noundef %43, i32 noundef 0) #18
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then2.i, %if.end.i.if.end7.i_crit_edge
  %peer_esw.0.i = phi ptr [ %call6.i, %if.then2.i ], [ null, %if.end.i.if.end7.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_sqs.0.lcssa)
  %cmp881.i = icmp sgt i32 %num_sqs.0.lcssa, 0
  br i1 %cmp881.i, label %for.body.lr.ph.i, label %if.end7.i.for.end.i_crit_edge

if.end7.i.for.end.i_crit_edge:                    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.end7.i
  %tobool18.not.i = icmp eq ptr %peer_esw.0.i, null
  %vport_sqs_list.i = getelementptr inbounds %struct.mlx5e_rep_priv, ptr %35, i32 0, i32 5
  br label %for.body.i

for.body.i:                                       ; preds = %list_add.exit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.082.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %list_add.exit.i.for.body.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %44 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i42 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %44, i32 noundef 3520, i32 noundef 20) #24
  %tobool.not.i = icmp eq ptr %call7.i.i.i42, null
  br i1 %tobool.not.i, label %for.body.i.out_err.i_crit_edge, label %if.end11.i

for.body.i.out_err.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %out_err.i

if.end11.i:                                       ; preds = %for.body.i
  %arrayidx.i = getelementptr i32, ptr %call8.i.i, i32 %i.082.i
  %45 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx.i, align 4
  %call12.i = tail call ptr @mlx5_eswitch_add_send_to_vport_rule(ptr noundef %3, ptr noundef %3, ptr noundef %7, i32 noundef %46) #18
  %cmp.i.i = icmp ugt ptr %call12.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end11.i.out_err.sink.split.i_crit_edge, label %if.end16.i

if.end11.i.out_err.sink.split.i_crit_edge:        ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %out_err.sink.split.i

if.end16.i:                                       ; preds = %if.end11.i
  %47 = ptrtoint ptr %call7.i.i.i42 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call12.i, ptr %call7.i.i.i42, align 8
  %48 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx.i, align 4
  %sqn.i = getelementptr inbounds %struct.mlx5e_rep_sq, ptr %call7.i.i.i42, i32 0, i32 2
  %50 = ptrtoint ptr %sqn.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %sqn.i, align 8
  br i1 %tobool18.not.i, label %if.end16.i.if.end27.i_crit_edge, label %if.then19.i

if.end16.i.if.end27.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end27.i

if.then19.i:                                      ; preds = %if.end16.i
  %call21.i = tail call ptr @mlx5_eswitch_add_send_to_vport_rule(ptr noundef nonnull %peer_esw.0.i, ptr noundef %3, ptr noundef %7, i32 noundef %49) #18
  %cmp.i77.i = icmp ugt ptr %call21.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i77.i, label %if.then23.i, label %if.end26.i

if.then23.i:                                      ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #20
  %51 = ptrtoint ptr %call7.i.i.i42 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %call7.i.i.i42, align 8
  tail call void @mlx5_eswitch_del_send_to_vport_rule(ptr noundef %52) #18
  br label %out_err.sink.split.i

if.end26.i:                                       ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #20
  %send_to_vport_rule_peer.i = getelementptr inbounds %struct.mlx5e_rep_sq, ptr %call7.i.i.i42, i32 0, i32 1
  %53 = ptrtoint ptr %send_to_vport_rule_peer.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call21.i, ptr %send_to_vport_rule_peer.i, align 4
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.end26.i, %if.end16.i.if.end27.i_crit_edge
  %list.i = getelementptr inbounds %struct.mlx5e_rep_sq, ptr %call7.i.i.i42, i32 0, i32 3
  %54 = ptrtoint ptr %vport_sqs_list.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %vport_sqs_list.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i, ptr noundef %vport_sqs_list.i, ptr noundef %55) #18
  br i1 %call.i.i.i, label %if.end.i.i.i43, label %if.end27.i.list_add.exit.i_crit_edge

if.end27.i.list_add.exit.i_crit_edge:             ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %list_add.exit.i

if.end.i.i.i43:                                   ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #20
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %list.i, ptr %prev1.i.i.i, align 4
  %57 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %55, ptr %list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.mlx5e_rep_sq, ptr %call7.i.i.i42, i32 0, i32 3, i32 1
  %58 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %vport_sqs_list.i, ptr %prev3.i.i.i, align 8
  %59 = ptrtoint ptr %vport_sqs_list.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store volatile ptr %list.i, ptr %vport_sqs_list.i, align 4
  br label %list_add.exit.i

list_add.exit.i:                                  ; preds = %if.end.i.i.i43, %if.end27.i.list_add.exit.i_crit_edge
  %inc.i = add nuw nsw i32 %i.082.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %num_sqs.0.lcssa
  br i1 %exitcond.not.i, label %list_add.exit.i.for.end.i_crit_edge, label %list_add.exit.i.for.body.i_crit_edge

list_add.exit.i.for.body.i_crit_edge:             ; preds = %list_add.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i

list_add.exit.i.for.end.i_crit_edge:              ; preds = %list_add.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end.i

for.end.i:                                        ; preds = %list_add.exit.i.for.end.i_crit_edge, %if.end7.i.for.end.i_crit_edge
  %tobool28.not.i = icmp eq ptr %peer_esw.0.i, null
  br i1 %tobool28.not.i, label %for.end.i.out.thread53_crit_edge, label %for.end.i.cleanup.sink.split.i_crit_edge

for.end.i.cleanup.sink.split.i_crit_edge:         ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup.sink.split.i

for.end.i.out.thread53_crit_edge:                 ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %out.thread53

out_err.sink.split.i:                             ; preds = %if.then23.i, %if.end11.i.out_err.sink.split.i_crit_edge
  %err.0.ph.in.i = phi ptr [ %call21.i, %if.then23.i ], [ %call12.i, %if.end11.i.out_err.sink.split.i_crit_edge ]
  %err.0.ph.i = ptrtoint ptr %err.0.ph.in.i to i32
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i42) #18
  br label %out_err.i

out_err.i:                                        ; preds = %out_err.sink.split.i, %for.body.i.out_err.i_crit_edge
  %err.0.i = phi i32 [ %err.0.ph.i, %out_err.sink.split.i ], [ -12, %for.body.i.out_err.i_crit_edge ]
  %60 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %mode.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %61)
  %cmp.not.i.i = icmp eq i32 %61, 2
  br i1 %cmp.not.i.i, label %if.end.i.i44, label %out_err.i.mlx5e_sqs2vport_stop.exit.i_crit_edge

out_err.i.mlx5e_sqs2vport_stop.exit.i_crit_edge:  ; preds = %out_err.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %mlx5e_sqs2vport_stop.exit.i

if.end.i.i44:                                     ; preds = %out_err.i
  %62 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %7, align 4
  %vport_sqs_list.i.i = getelementptr inbounds %struct.mlx5e_rep_priv, ptr %63, i32 0, i32 5
  %64 = ptrtoint ptr %vport_sqs_list.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %vport_sqs_list.i.i, align 4
  %cmp8.not31.i.i = icmp eq ptr %65, %vport_sqs_list.i.i
  br i1 %cmp8.not31.i.i, label %if.end.i.i44.mlx5e_sqs2vport_stop.exit.i_crit_edge, label %if.end.i.i44.for.body.i.i_crit_edge

if.end.i.i44.for.body.i.i_crit_edge:              ; preds = %if.end.i.i44
  br label %for.body.i.i

if.end.i.i44.mlx5e_sqs2vport_stop.exit.i_crit_edge: ; preds = %if.end.i.i44
  call void @__sanitizer_cov_trace_pc() #20
  br label %mlx5e_sqs2vport_stop.exit.i

for.body.i.i:                                     ; preds = %list_del.exit.i.i.for.body.i.i_crit_edge, %if.end.i.i44.for.body.i.i_crit_edge
  %.pn.in32.i.i = phi ptr [ %.pn35.i.i, %list_del.exit.i.i.for.body.i.i_crit_edge ], [ %65, %if.end.i.i44.for.body.i.i_crit_edge ]
  %rep_sq.034.i.i = getelementptr i8, ptr %.pn.in32.i.i, i32 -12
  %66 = ptrtoint ptr %.pn.in32.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %.pn35.i.i = load ptr, ptr %.pn.in32.i.i, align 4
  %67 = ptrtoint ptr %rep_sq.034.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %rep_sq.034.i.i, align 4
  tail call void @mlx5_eswitch_del_send_to_vport_rule(ptr noundef %68) #18
  %send_to_vport_rule_peer.i.i = getelementptr i8, ptr %.pn.in32.i.i, i32 -8
  %69 = ptrtoint ptr %send_to_vport_rule_peer.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %send_to_vport_rule_peer.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %70, null
  br i1 %tobool.not.i.i, label %for.body.i.i.if.end11.i.i_crit_edge, label %if.then9.i.i

for.body.i.i.if.end11.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end11.i.i

if.then9.i.i:                                     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @mlx5_eswitch_del_send_to_vport_rule(ptr noundef nonnull %70) #18
  br label %if.end11.i.i

if.end11.i.i:                                     ; preds = %if.then9.i.i, %for.body.i.i.if.end11.i.i_crit_edge
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in32.i.i) #18
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i45, label %if.end11.i.i.list_del.exit.i.i_crit_edge

if.end11.i.i.list_del.exit.i.i_crit_edge:         ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %list_del.exit.i.i

if.end.i.i.i.i45:                                 ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #20
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in32.i.i, i32 0, i32 1
  %71 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %prev.i.i.i.i, align 4
  %73 = ptrtoint ptr %.pn.in32.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %.pn.in32.i.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %74, i32 0, i32 1
  %75 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %72, ptr %prev1.i.i.i.i.i, align 4
  %76 = ptrtoint ptr %72 to i32
  call void @__asan_store4_noabort(i32 %76)
  store volatile ptr %74, ptr %72, align 4
  br label %list_del.exit.i.i

list_del.exit.i.i:                                ; preds = %if.end.i.i.i.i45, %if.end11.i.i.list_del.exit.i.i_crit_edge
  %77 = ptrtoint ptr %.pn.in32.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in32.i.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in32.i.i, i32 0, i32 1
  %78 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  tail call void @kfree(ptr noundef %rep_sq.034.i.i) #18
  %cmp8.not.i.i = icmp eq ptr %.pn35.i.i, %vport_sqs_list.i.i
  br i1 %cmp8.not.i.i, label %list_del.exit.i.i.mlx5e_sqs2vport_stop.exit.i_crit_edge, label %list_del.exit.i.i.for.body.i.i_crit_edge

list_del.exit.i.i.for.body.i.i_crit_edge:         ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i.i

list_del.exit.i.i.mlx5e_sqs2vport_stop.exit.i_crit_edge: ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %mlx5e_sqs2vport_stop.exit.i

mlx5e_sqs2vport_stop.exit.i:                      ; preds = %list_del.exit.i.i.mlx5e_sqs2vport_stop.exit.i_crit_edge, %if.end.i.i44.mlx5e_sqs2vport_stop.exit.i_crit_edge, %out_err.i.mlx5e_sqs2vport_stop.exit.i_crit_edge
  br i1 %tobool18.not.i, label %mlx5e_sqs2vport_stop.exit.i.out_crit_edge, label %mlx5e_sqs2vport_stop.exit.i.cleanup.sink.split.i_crit_edge

mlx5e_sqs2vport_stop.exit.i.cleanup.sink.split.i_crit_edge: ; preds = %mlx5e_sqs2vport_stop.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup.sink.split.i

mlx5e_sqs2vport_stop.exit.i.out_crit_edge:        ; preds = %mlx5e_sqs2vport_stop.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

cleanup.sink.split.i:                             ; preds = %mlx5e_sqs2vport_stop.exit.i.cleanup.sink.split.i_crit_edge, %for.end.i.cleanup.sink.split.i_crit_edge
  %retval.0.ph.i = phi i32 [ 0, %for.end.i.cleanup.sink.split.i_crit_edge ], [ %err.0.i, %mlx5e_sqs2vport_stop.exit.i.cleanup.sink.split.i_crit_edge ]
  %79 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %3, align 8
  %devcom38.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %80, i32 0, i32 17, i32 32
  %81 = ptrtoint ptr %devcom38.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %devcom38.i, align 4
  tail call void @mlx5_devcom_release_peer_data(ptr noundef %82, i32 noundef 0) #18
  br label %out

out.thread53:                                     ; preds = %for.end.i.out.thread53_crit_edge, %for.end20.out.thread53_crit_edge
  tail call void @kfree(ptr noundef nonnull %call8.i.i) #18
  br label %if.end24

out:                                              ; preds = %cleanup.sink.split.i, %mlx5e_sqs2vport_stop.exit.i.out_crit_edge
  %retval.0.i = phi i32 [ %err.0.i, %mlx5e_sqs2vport_stop.exit.i.out_crit_edge ], [ %retval.0.ph.i, %cleanup.sink.split.i ]
  tail call void @kfree(ptr noundef nonnull %call8.i.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool22.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool22.not, label %out.if.end24_crit_edge, label %out.if.then23_crit_edge

out.if.then23_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then23

out.if.end24_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end24

if.then23:                                        ; preds = %out.if.then23_crit_edge, %if.end7.i.i.if.then23_crit_edge, %mlx5e_get_dcb_num_tc.exit.if.then23_crit_edge
  %err.050 = phi i32 [ %retval.0.i, %out.if.then23_crit_edge ], [ -12, %if.end7.i.i.if.then23_crit_edge ], [ -12, %mlx5e_get_dcb_num_tc.exit.if.then23_crit_edge ]
  %netdev = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 22
  %83 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %netdev, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %84, ptr noundef nonnull @.str, i32 noundef %err.050) #25
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %out.if.end24_crit_edge, %out.thread53
  %err.051 = phi i32 [ %err.050, %if.then23 ], [ 0, %out.if.end24_crit_edge ], [ 0, %out.thread53 ]
  ret i32 %err.051
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5e_remove_sqs_fwd_rules(ptr nocapture noundef readonly %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %mdev = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %0 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev, align 64
  %eswitch = getelementptr inbounds %struct.mlx5_core_dev, ptr %1, i32 0, i32 17, i32 28
  %2 = ptrtoint ptr %eswitch to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %eswitch, align 4
  %mode.i = getelementptr inbounds %struct.mlx5_eswitch, ptr %3, i32 0, i32 16
  %4 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mode.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp.not.i = icmp eq i32 %5, 2
  br i1 %cmp.not.i, label %if.end.i, label %entry.mlx5e_sqs2vport_stop.exit_crit_edge

entry.mlx5e_sqs2vport_stop.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %mlx5e_sqs2vport_stop.exit

if.end.i:                                         ; preds = %entry
  %ppriv = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 43
  %6 = ptrtoint ptr %ppriv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ppriv, align 32
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %vport_sqs_list.i = getelementptr inbounds %struct.mlx5e_rep_priv, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %vport_sqs_list.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vport_sqs_list.i, align 4
  %cmp8.not31.i = icmp eq ptr %13, %vport_sqs_list.i
  br i1 %cmp8.not31.i, label %if.end.i.mlx5e_sqs2vport_stop.exit_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.mlx5e_sqs2vport_stop.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %mlx5e_sqs2vport_stop.exit

for.body.i:                                       ; preds = %list_del.exit.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %.pn.in32.i = phi ptr [ %.pn35.i, %list_del.exit.i.for.body.i_crit_edge ], [ %13, %if.end.i.for.body.i_crit_edge ]
  %rep_sq.034.i = getelementptr i8, ptr %.pn.in32.i, i32 -12
  %14 = ptrtoint ptr %.pn.in32.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pn35.i = load ptr, ptr %.pn.in32.i, align 4
  %15 = ptrtoint ptr %rep_sq.034.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rep_sq.034.i, align 4
  tail call void @mlx5_eswitch_del_send_to_vport_rule(ptr noundef %16) #18
  %send_to_vport_rule_peer.i = getelementptr i8, ptr %.pn.in32.i, i32 -8
  %17 = ptrtoint ptr %send_to_vport_rule_peer.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %send_to_vport_rule_peer.i, align 4
  %tobool.not.i = icmp eq ptr %18, null
  br i1 %tobool.not.i, label %for.body.i.if.end11.i_crit_edge, label %if.then9.i

for.body.i.if.end11.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end11.i

if.then9.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @mlx5_eswitch_del_send_to_vport_rule(ptr noundef nonnull %18) #18
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then9.i, %for.body.i.if.end11.i_crit_edge
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in32.i) #18
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end11.i.list_del.exit.i_crit_edge

if.end11.i.list_del.exit.i_crit_edge:             ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #20
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in32.i, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev.i.i.i, align 4
  %21 = ptrtoint ptr %.pn.in32.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %.pn.in32.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %prev1.i.i.i.i, align 4
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %22, ptr %20, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.end11.i.list_del.exit.i_crit_edge
  %25 = ptrtoint ptr %.pn.in32.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in32.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in32.i, i32 0, i32 1
  %26 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @kfree(ptr noundef %rep_sq.034.i) #18
  %cmp8.not.i = icmp eq ptr %.pn35.i, %vport_sqs_list.i
  br i1 %cmp8.not.i, label %list_del.exit.i.mlx5e_sqs2vport_stop.exit_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i

list_del.exit.i.mlx5e_sqs2vport_stop.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %mlx5e_sqs2vport_stop.exit

mlx5e_sqs2vport_stop.exit:                        ; preds = %list_del.exit.i.mlx5e_sqs2vport_stop.exit_crit_edge, %if.end.i.mlx5e_sqs2vport_stop.exit_crit_edge, %entry.mlx5e_sqs2vport_stop.exit_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @mlx5e_is_uplink_rep(ptr nocapture noundef readonly %priv) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %ppriv = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 43
  %0 = ptrtoint ptr %ppriv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ppriv, align 32
  %mdev = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
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
  %8 = and i32 %7, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  %tobool1.not = icmp eq ptr %1, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end3

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end3:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 8
  %vport = getelementptr inbounds %struct.mlx5_eswitch_rep, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %vport to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %vport, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %12)
  %cmp = icmp eq i16 %12, -1
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %cmp, %if.end3 ], [ false, %entry.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @mlx5e_rep_has_offload_stats(ptr nocapture readnone %dev, i32 noundef %attr_id) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %attr_id)
  %cond = icmp eq i32 %attr_id, 1
  ret i1 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5e_rep_get_offload_stats(i32 noundef %attr_id, ptr noundef %dev, ptr noundef %sp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %attr_id)
  %cond = icmp eq i32 %attr_id, 1
  br i1 %cond, label %sw.bb, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  tail call void @mlx5e_fold_sw_stats64(ptr noundef %add.ptr.i.i, ptr noundef %sp) #18
  br label %return

return:                                           ; preds = %sw.bb, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @mlx5e_eswitch_uplink_rep(ptr nocapture noundef readonly %netdev) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 16
  %0 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev_ops, align 8
  %cmp = icmp eq ptr %1, @mlx5e_netdev_ops
  br i1 %cmp, label %land.rhs, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %land.end

land.rhs:                                         ; preds = %entry
  %ppriv.i = getelementptr i8, ptr %netdev, i32 30240
  %2 = ptrtoint ptr %ppriv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ppriv.i, align 32
  %mdev.i = getelementptr i8, ptr %netdev, i32 11328
  %4 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mdev.i, align 64
  %caps.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %caps.i, align 8
  %add.ptr.i3 = getelementptr i32, ptr %7, i32 13
  %8 = ptrtoint ptr %add.ptr.i3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr.i3, align 4
  %10 = and i32 %9, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i = icmp eq i32 %10, 0
  %tobool1.not.i = icmp eq ptr %3, null
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %tobool1.not.i
  br i1 %or.cond.i, label %land.rhs.land.end_crit_edge, label %if.end3.i

land.rhs.land.end_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #20
  br label %land.end

if.end3.i:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #20
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %3, align 8
  %vport.i = getelementptr inbounds %struct.mlx5_eswitch_rep, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %vport.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %vport.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %14)
  %cmp.i = icmp eq i16 %14, -1
  br label %land.end

land.end:                                         ; preds = %if.end3.i, %land.rhs.land.end_crit_edge, %entry.land.end_crit_edge
  %15 = phi i1 [ false, %entry.land.end_crit_edge ], [ %cmp.i, %if.end3.i ], [ false, %land.rhs.land.end_crit_edge ]
  ret i1 %15
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @mlx5e_eswitch_vf_rep(ptr nocapture noundef readonly %netdev) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 16
  %0 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev_ops, align 8
  %cmp = icmp eq ptr %1, @mlx5e_netdev_ops_rep
  ret i1 %cmp
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5e_rep_bond_update(ptr nocapture noundef readonly %priv, i1 noundef zeroext %cleanup) local_unnamed_addr #0 align 64 {
entry:
  %dest.i = alloca %struct.mlx5_flow_destination, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %ppriv.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 43
  %0 = ptrtoint ptr %ppriv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ppriv.i, align 32
  %vport_rx_rule.i = getelementptr inbounds %struct.mlx5e_rep_priv, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %vport_rx_rule.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vport_rx_rule.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.rep_vport_rx_rule_destroy.exit_crit_edge, label %if.end.i

entry.rep_vport_rx_rule_destroy.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %rep_vport_rx_rule_destroy.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @mlx5_del_flow_rules(ptr noundef nonnull %3) #18
  %4 = ptrtoint ptr %vport_rx_rule.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %vport_rx_rule.i, align 8
  br label %rep_vport_rx_rule_destroy.exit

rep_vport_rx_rule_destroy.exit:                   ; preds = %if.end.i, %entry.rep_vport_rx_rule_destroy.exit_crit_edge
  br i1 %cleanup, label %rep_vport_rx_rule_destroy.exit.cond.end_crit_edge, label %cond.false

rep_vport_rx_rule_destroy.exit.cond.end_crit_edge: ; preds = %rep_vport_rx_rule_destroy.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end

cond.false:                                       ; preds = %rep_vport_rx_rule_destroy.exit
  %mdev.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %5 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mdev.i, align 64
  %eswitch.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %6, i32 0, i32 17, i32 28
  %7 = ptrtoint ptr %eswitch.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %eswitch.i, align 4
  %9 = ptrtoint ptr %ppriv.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ppriv.i, align 32
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %dest.i) #18
  %13 = getelementptr inbounds i8, ptr %dest.i, i32 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_storeN_noabort(i32 %14, i32 8)
  store i64 -1, ptr %13, align 4
  %15 = ptrtoint ptr %dest.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %dest.i, align 4
  %root_ft.i = getelementptr inbounds %struct.mlx5e_rep_priv, ptr %10, i32 0, i32 3
  %16 = ptrtoint ptr %root_ft.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %root_ft.i, align 4
  %18 = getelementptr inbounds %struct.mlx5_flow_destination, ptr %dest.i, i32 0, i32 1
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %17, ptr %18, align 4
  %vport.i = getelementptr inbounds %struct.mlx5_eswitch_rep, ptr %12, i32 0, i32 1
  %20 = ptrtoint ptr %vport.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %vport.i, align 4
  %call.i = call ptr @mlx5_eswitch_create_vport_rx_rule(ptr noundef %8, i16 noundef zeroext %21, ptr noundef nonnull %dest.i) #18
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i, label %if.end.i4

if.then.i:                                        ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #20
  %22 = ptrtoint ptr %call.i to i32
  br label %mlx5e_create_rep_vport_rx_rule.exit

if.end.i4:                                        ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #20
  %vport_rx_rule.i3 = getelementptr inbounds %struct.mlx5e_rep_priv, ptr %10, i32 0, i32 4
  %23 = ptrtoint ptr %vport_rx_rule.i3 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call.i, ptr %vport_rx_rule.i3, align 8
  br label %mlx5e_create_rep_vport_rx_rule.exit

mlx5e_create_rep_vport_rx_rule.exit:              ; preds = %if.end.i4, %if.then.i
  %retval.0.i = phi i32 [ %22, %if.then.i ], [ 0, %if.end.i4 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %dest.i) #18
  br label %cond.end

cond.end:                                         ; preds = %mlx5e_create_rep_vport_rx_rule.exit, %rep_vport_rx_rule_destroy.exit.cond.end_crit_edge
  %cond = phi i32 [ %retval.0.i, %mlx5e_create_rep_vport_rx_rule.exit ], [ 0, %rep_vport_rx_rule_destroy.exit.cond.end_crit_edge ]
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5e_rep_init() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__auxiliary_driver_register(ptr noundef nonnull @mlx5e_rep_driver, ptr noundef null, ptr noundef nonnull @.str.1) #18
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__auxiliary_driver_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5e_rep_cleanup() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @auxiliary_driver_unregister(ptr noundef nonnull @mlx5e_rep_driver) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @auxiliary_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_mlx5e_rep_neigh_update(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %__data_loc_devname = getelementptr inbounds %struct.trace_event_raw_mlx5e_rep_neigh_update, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %__data_loc_devname to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %__data_loc_devname, align 4
  %and = and i32 %3, 65535
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  %ha = getelementptr inbounds %struct.trace_event_raw_mlx5e_rep_neigh_update, ptr %1, i32 0, i32 2
  %v4 = getelementptr inbounds %struct.trace_event_raw_mlx5e_rep_neigh_update, ptr %1, i32 0, i32 3
  %v6 = getelementptr inbounds %struct.trace_event_raw_mlx5e_rep_neigh_update, ptr %1, i32 0, i32 4
  %neigh_connected = getelementptr inbounds %struct.trace_event_raw_mlx5e_rep_neigh_update, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %neigh_connected to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %neigh_connected, align 2, !range !116
  %6 = zext i8 %5 to i32
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.13, ptr noundef %add.ptr, ptr noundef %ha, ptr noundef %v4, ptr noundef %v6, i32 noundef %6) #18
  %call3 = tail call i32 @trace_handle_return(ptr noundef %seq) #18
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_raw_output_prep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_handle_return(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @perf_trace_buf_alloc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_trace_run_bpf_submit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.frameaddress.p0(i32 immarg) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run3(ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #11

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mlx5_devcom_is_paired(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_devcom_get_peer_data(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_eswitch_add_send_to_vport_rule(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_eswitch_del_send_to_vport_rule(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_devcom_release_peer_data(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_fold_sw_stats64(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5e_rep_open(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %ppriv = getelementptr i8, ptr %dev, i32 30240
  %0 = ptrtoint ptr %ppriv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ppriv, align 32
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %state_lock = getelementptr i8, ptr %dev, i32 2420
  tail call void @mutex_lock_nested(ptr noundef %state_lock, i32 noundef 0) #18
  %call2 = tail call i32 @mlx5e_open_locked(ptr noundef %dev) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.unlock_crit_edge

entry.unlock_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %unlock

if.end:                                           ; preds = %entry
  %mdev = getelementptr i8, ptr %dev, i32 11328
  %4 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mdev, align 64
  %vport = getelementptr inbounds %struct.mlx5_eswitch_rep, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %vport to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %vport, align 4
  %call3 = tail call i32 @mlx5_modify_vport_admin_state(ptr noundef %5, i8 noundef zeroext 1, i16 noundef zeroext %7, i8 noundef zeroext 1, i8 noundef zeroext 1) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then5, label %if.end.unlock_crit_edge

if.end.unlock_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %unlock

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @netif_carrier_on(ptr noundef %dev) #18
  br label %unlock

unlock:                                           ; preds = %if.then5, %if.end.unlock_crit_edge, %entry.unlock_crit_edge
  tail call void @mutex_unlock(ptr noundef %state_lock) #18
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5e_rep_close(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %ppriv = getelementptr i8, ptr %dev, i32 30240
  %0 = ptrtoint ptr %ppriv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ppriv, align 32
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %state_lock = getelementptr i8, ptr %dev, i32 2420
  tail call void @mutex_lock_nested(ptr noundef %state_lock, i32 noundef 0) #18
  %mdev = getelementptr i8, ptr %dev, i32 11328
  %4 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mdev, align 64
  %vport = getelementptr inbounds %struct.mlx5_eswitch_rep, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %vport to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %vport, align 4
  %call2 = tail call i32 @mlx5_modify_vport_admin_state(ptr noundef %5, i8 noundef zeroext 1, i16 noundef zeroext %7, i8 noundef zeroext 1, i8 noundef zeroext 0) #18
  %call3 = tail call i32 @mlx5e_close_locked(ptr noundef %dev) #18
  tail call void @mutex_unlock(ptr noundef %state_lock) #18
  ret i32 %call3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_xmit(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5e_rep_change_mtu(ptr noundef %netdev, i32 noundef %new_mtu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mlx5e_change_mtu(ptr noundef %netdev, i32 noundef %new_mtu, ptr noundef null) #18
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx5e_rep_get_stats(ptr noundef %dev, ptr nocapture noundef writeonly %stats) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  tail call void @mlx5e_queue_update_stats(ptr noundef %add.ptr.i) #18
  %vf_vport = getelementptr i8, ptr %dev, i32 21040
  %0 = call ptr @memcpy(ptr %stats, ptr %vf_vport, i32 192)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_rep_setup_tc(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5e_rep_change_carrier(ptr noundef %dev, i1 noundef zeroext %new_carrier) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %ppriv = getelementptr i8, ptr %dev, i32 30240
  %0 = ptrtoint ptr %ppriv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ppriv, align 32
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %mdev = getelementptr i8, ptr %dev, i32 11328
  %4 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mdev, align 64
  %vport = getelementptr inbounds %struct.mlx5_eswitch_rep, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %vport to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %vport, align 4
  br i1 %new_carrier, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call2 = tail call i32 @mlx5_modify_vport_admin_state(ptr noundef %5, i8 noundef zeroext 1, i16 noundef zeroext %7, i8 noundef zeroext 1, i8 noundef zeroext 1) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @netif_carrier_on(ptr noundef %dev) #18
  br label %cleanup

if.else:                                          ; preds = %entry
  %call7 = tail call i32 @mlx5_modify_vport_admin_state(ptr noundef %5, i8 noundef zeroext 1, i16 noundef zeroext %7, i8 noundef zeroext 1, i8 noundef zeroext 0) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end10:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @netif_carrier_off(ptr noundef %dev) #18
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.else.cleanup_crit_edge, %if.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.then.cleanup_crit_edge ], [ %call7, %if.else.cleanup_crit_edge ], [ 0, %if.end10 ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @mlx5e_rep_get_devlink_port(ptr nocapture noundef readonly %netdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %ppriv = getelementptr i8, ptr %netdev, i32 30240
  %0 = ptrtoint ptr %ppriv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ppriv, align 32
  %mdev = getelementptr i8, ptr %netdev, i32 11328
  %2 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mdev, align 64
  %eswitch = getelementptr inbounds %struct.mlx5_core_dev, ptr %3, i32 0, i32 17, i32 28
  %4 = ptrtoint ptr %eswitch to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %eswitch, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %vport = getelementptr inbounds %struct.mlx5_eswitch_rep, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %vport to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %vport, align 4
  %call2 = tail call ptr @mlx5_esw_offloads_devlink_port(ptr noundef %5, i16 noundef zeroext %9) #18
  ret ptr %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_open_locked(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_modify_vport_admin_state(ptr noundef, i8 noundef zeroext, i16 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_close_locked(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_change_mtu(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_queue_update_stats(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_esw_offloads_devlink_port(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_del_flow_rules(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_eswitch_create_vport_rx_rule(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5e_rep_probe(ptr nocapture noundef readonly %adev, ptr nocapture noundef readnone %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %mdev1 = getelementptr inbounds %struct.mlx5_adev, ptr %adev, i32 0, i32 1
  %0 = ptrtoint ptr %mdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev1, align 8
  %eswitch = getelementptr inbounds %struct.mlx5_core_dev, ptr %1, i32 0, i32 17, i32 28
  %2 = ptrtoint ptr %eswitch to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %eswitch, align 4
  tail call void @mlx5_eswitch_register_vport_reps(ptr noundef %3, ptr noundef nonnull @rep_ops, i8 noundef zeroext 0) #18
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx5e_rep_remove(ptr nocapture noundef readonly %adev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %mdev1 = getelementptr inbounds %struct.mlx5_adev, ptr %adev, i32 0, i32 1
  %0 = ptrtoint ptr %mdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev1, align 8
  %eswitch = getelementptr inbounds %struct.mlx5_core_dev, ptr %1, i32 0, i32 17, i32 28
  %2 = ptrtoint ptr %eswitch to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %eswitch, align 4
  tail call void @mlx5_eswitch_unregister_vport_reps(ptr noundef %3, i8 noundef zeroext 0) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_eswitch_register_vport_reps(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5e_vport_rep_load(ptr noundef %dev, ptr noundef %rep) #0 align 64 {
entry:
  %addr.i.i.i = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1184) #24
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %rep, ptr %call7.i.i, align 8
  %2 = ptrtoint ptr %rep to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i, ptr %rep, align 4
  %vport_sqs_list = getelementptr inbounds %struct.mlx5e_rep_priv, ptr %call7.i.i, i32 0, i32 5
  %3 = ptrtoint ptr %vport_sqs_list to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %vport_sqs_list, ptr %vport_sqs_list, align 4
  %prev.i = getelementptr inbounds %struct.mlx5e_rep_priv, ptr %call7.i.i, i32 0, i32 5, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %vport_sqs_list, ptr %prev.i, align 8
  %vport = getelementptr inbounds %struct.mlx5_eswitch_rep, ptr %rep, i32 0, i32 1
  %5 = ptrtoint ptr %vport to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %vport, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %6)
  %cmp = icmp eq i16 %6, -1
  br i1 %cmp, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  %uplink_netdev.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 20, i32 2
  %7 = ptrtoint ptr %uplink_netdev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %uplink_netdev.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %8, i32 2304
  %netdev.i = getelementptr i8, ptr %8, i32 11332
  %9 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %netdev.i, align 4
  %netdev3.i = getelementptr inbounds %struct.mlx5e_rep_priv, ptr %call7.i.i, i32 0, i32 2
  %11 = ptrtoint ptr %netdev3.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %netdev3.i, align 8
  %call4.i = tail call i32 @mlx5e_netdev_change_profile(ptr noundef %add.ptr.i.i, ptr noundef nonnull @mlx5e_uplink_rep_profile, ptr noundef nonnull %call7.i.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then3.if.then8_crit_edge

if.then3.if.then8_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then8

if.end.i:                                         ; preds = %if.then3
  %eswitch.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 28
  %12 = ptrtoint ptr %eswitch.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %eswitch.i, align 4
  %14 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %call7.i.i, align 8
  %vport.i = getelementptr inbounds %struct.mlx5_eswitch_rep, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %vport.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %vport.i, align 4
  %call7.i = tail call ptr @mlx5_esw_offloads_devlink_port(ptr noundef %13, i16 noundef zeroext %17) #18
  %tobool8.not.i = icmp eq ptr %call7.i, null
  br i1 %tobool8.not.i, label %if.end.i.cleanup_crit_edge, label %if.then9.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then9.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  %18 = ptrtoint ptr %netdev3.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %netdev3.i, align 8
  tail call void @devlink_port_type_eth_set(ptr noundef nonnull %call7.i, ptr noundef %19) #18
  br label %cleanup

if.else:                                          ; preds = %if.end
  %call1.i = tail call ptr @mlx5e_create_netdev(ptr noundef %dev, ptr noundef nonnull @mlx5e_rep_profile) #18
  %tobool.not.i21 = icmp eq ptr %call1.i, null
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 8
  br i1 %tobool.not.i21, label %do.end.i, label %if.end.i25

do.end.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  %22 = tail call i32 @llvm.read_register.i32(metadata !103) #18
  %and.i.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %task.i, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %25, i32 0, i32 68
  %26 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pid.i, align 8
  %28 = ptrtoint ptr %vport to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %vport, align 4
  %conv.i = zext i16 %29 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %21, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30, i32 noundef 1203, i32 noundef %27, i32 noundef %conv.i) #25
  br label %if.then8

if.end.i25:                                       ; preds = %if.else
  %parent.i.i = getelementptr inbounds %struct.net_device, ptr %call1.i, i32 0, i32 133, i32 1
  %30 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %21, ptr %parent.i.i, align 8
  %netdev_ops.i.i = getelementptr inbounds %struct.net_device, ptr %call1.i, i32 0, i32 16
  %31 = ptrtoint ptr %netdev_ops.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @mlx5e_netdev_ops_rep, ptr %netdev_ops.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr.i.i.i) #18
  %32 = call ptr @memset(ptr %addr.i.i.i, i32 255, i32 6)
  call void @get_random_bytes(ptr noundef nonnull %addr.i.i.i, i32 noundef 6) #18
  %33 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %addr.i.i.i, align 1
  %35 = and i8 %34, -4
  %36 = or i8 %35, 2
  store i8 %36, ptr %addr.i.i.i, align 1
  call void @dev_addr_mod(ptr noundef nonnull %call1.i, i32 noundef 0, ptr noundef nonnull %addr.i.i.i, i32 noundef 6) #18
  %addr_assign_type.i.i.i = getelementptr inbounds %struct.net_device, ptr %call1.i, i32 0, i32 55
  %37 = ptrtoint ptr %addr_assign_type.i.i.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 1, ptr %addr_assign_type.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr.i.i.i) #18
  %ethtool_ops.i.i = getelementptr inbounds %struct.net_device, ptr %call1.i, i32 0, i32 44
  %38 = ptrtoint ptr %ethtool_ops.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @mlx5e_rep_ethtool_ops, ptr %ethtool_ops.i.i, align 16
  %watchdog_timeo.i.i = getelementptr inbounds %struct.net_device, ptr %call1.i, i32 0, i32 115
  %39 = ptrtoint ptr %watchdog_timeo.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 1500, ptr %watchdog_timeo.i.i, align 4
  %hw_features.i.i = getelementptr inbounds %struct.net_device, ptr %call1.i, i32 0, i32 24
  %40 = ptrtoint ptr %hw_features.i.i to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %hw_features.i.i, align 8
  %or14.i.i = or i64 %41, 564049466179603
  store i64 %or14.i.i, ptr %hw_features.i.i, align 8
  %features.i.i = getelementptr inbounds %struct.net_device, ptr %call1.i, i32 0, i32 23
  %42 = ptrtoint ptr %features.i.i to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %features.i.i, align 16
  %or16.i.i = or i64 %41, %43
  %or18.i.i = or i64 %or16.i.i, 564049466187795
  store i64 %or18.i.i, ptr %features.i.i, align 16
  %netdev3.i23 = getelementptr inbounds %struct.mlx5e_rep_priv, ptr %call7.i.i, i32 0, i32 2
  %44 = ptrtoint ptr %netdev3.i23 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call1.i, ptr %netdev3.i23, align 8
  %add.ptr.i.i24 = getelementptr i8, ptr %call1.i, i32 2304
  %profile5.i = getelementptr i8, ptr %call1.i, i32 30236
  %45 = ptrtoint ptr %profile5.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @mlx5e_rep_profile, ptr %profile5.i, align 4
  %ppriv.i = getelementptr i8, ptr %call1.i, i32 30240
  %46 = ptrtoint ptr %ppriv.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call7.i.i, ptr %ppriv.i, align 32
  %47 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %call7.i.i, align 8
  %mdev2.i.i.i = getelementptr i8, ptr %call1.i, i32 11328
  %49 = ptrtoint ptr %mdev2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %mdev2.i.i.i, align 64
  %caps.i.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %50, i32 0, i32 8
  %51 = ptrtoint ptr %caps.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %caps.i.i.i, align 8
  %add.ptr.i2.i.i = getelementptr i32, ptr %52, i32 17
  %53 = ptrtoint ptr %add.ptr.i2.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %add.ptr.i2.i.i, align 4
  %num_channels.i.i.i = getelementptr i8, ptr %call1.i, i32 6032
  %55 = ptrtoint ptr %num_channels.i.i.i to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 1, ptr %num_channels.i.i.i, align 4
  %hard_mtu.i.i.i = getelementptr i8, ptr %call1.i, i32 6164
  %56 = ptrtoint ptr %hard_mtu.i.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 22, ptr %hard_mtu.i.i.i, align 4
  %mtu.i.i.i = getelementptr inbounds %struct.net_device, ptr %call1.i, i32 0, i32 20
  %57 = ptrtoint ptr %mtu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %mtu.i.i.i, align 4
  %sw_mtu.i.i.i = getelementptr i8, ptr %call1.i, i32 6160
  %59 = ptrtoint ptr %sw_mtu.i.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %sw_mtu.i.i.i, align 4
  %vport.i.i.i = getelementptr inbounds %struct.mlx5_eswitch_rep, ptr %48, i32 0, i32 1
  %60 = ptrtoint ptr %vport.i.i.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %vport.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %61)
  %cmp.i.i.i = icmp eq i16 %61, -1
  %..i.i.i = select i1 %cmp.i.i.i, i8 10, i8 7
  %params3.i.i.i = getelementptr i8, ptr %call1.i, i32 6028
  %62 = ptrtoint ptr %params3.i.i.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %..i.i.i, ptr %params3.i.i.i, align 4
  %63 = lshr i32 %54, 20
  %64 = trunc i32 %63 to i8
  %65 = and i8 %64, 1
  call void @mlx5e_build_rq_params(ptr noundef %50, ptr noundef %params3.i.i.i) #18
  %66 = ptrtoint ptr %caps.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %caps.i.i.i, align 8
  %add.ptr12.i.i.i = getelementptr i32, ptr %67, i32 17
  %68 = ptrtoint ptr %add.ptr12.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %add.ptr12.i.i.i, align 4
  %rx_dim_enabled.i.i.i = getelementptr i8, ptr %call1.i, i32 6143
  %70 = lshr i32 %69, 29
  %71 = trunc i32 %70 to i8
  %72 = and i8 %71, 1
  %73 = ptrtoint ptr %rx_dim_enabled.i.i.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %72, ptr %rx_dim_enabled.i.i.i, align 1
  call void @mlx5e_set_rx_cq_mode_params(ptr noundef %params3.i.i.i, i8 noundef zeroext %65) #18
  %num_tc.i.i.i = getelementptr i8, ptr %call1.i, i32 6038
  %74 = ptrtoint ptr %num_tc.i.i.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 1, ptr %num_tc.i.i.i, align 2
  %tunneled_offload_en.i.i.i = getelementptr i8, ptr %call1.i, i32 6109
  %75 = ptrtoint ptr %tunneled_offload_en.i.i.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 0, ptr %tunneled_offload_en.i.i.i, align 1
  %76 = ptrtoint ptr %num_channels.i.i.i to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %num_channels.i.i.i, align 4
  %conv17.i.i.i = zext i16 %77 to i32
  %num_tc_x_num_ch.i.i.i = getelementptr i8, ptr %call1.i, i32 30128
  %78 = ptrtoint ptr %num_tc_x_num_ch.i.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %conv17.i.i.i, ptr %num_tc_x_num_ch.i.i.i, align 16
  %tx_min_inline_mode.i.i.i = getelementptr i8, ptr %call1.i, i32 6140
  call void @mlx5_query_min_inline(ptr noundef %50, ptr noundef %tx_min_inline_mode.i.i.i) #18
  call void @mlx5e_timestamp_init(ptr noundef %add.ptr.i.i24) #18
  %call11.i = call i32 @mlx5e_attach_netdev(ptr noundef %add.ptr.i.i24) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.not.i, label %if.end16.i, label %if.then13.i

if.then13.i:                                      ; preds = %if.end.i25
  call void @__sanitizer_cov_trace_pc() #20
  %79 = ptrtoint ptr %vport to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %vport, align 4
  %conv15.i = zext i16 %80 to i32
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef nonnull %call1.i, ptr noundef nonnull @.str.32, i32 noundef %conv15.i) #25
  br label %err_cleanup_profile.i

if.end16.i:                                       ; preds = %if.end.i25
  %call17.i = call i32 @register_netdev(ptr noundef nonnull %call1.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool18.not.i = icmp eq i32 %call17.i, 0
  br i1 %tobool18.not.i, label %if.end22.i, label %if.then19.i

if.then19.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #20
  %81 = ptrtoint ptr %vport to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %vport, align 4
  %conv21.i = zext i16 %82 to i32
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef nonnull %call1.i, ptr noundef nonnull @.str.33, i32 noundef %conv21.i) #25
  call void @mlx5e_detach_netdev(ptr noundef %add.ptr.i.i24) #18
  br label %err_cleanup_profile.i

if.end22.i:                                       ; preds = %if.end16.i
  %eswitch.i26 = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 28
  %83 = ptrtoint ptr %eswitch.i26 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %eswitch.i26, align 4
  %85 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %call7.i.i, align 8
  %vport25.i = getelementptr inbounds %struct.mlx5_eswitch_rep, ptr %86, i32 0, i32 1
  %87 = ptrtoint ptr %vport25.i to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %vport25.i, align 4
  %call26.i = call ptr @mlx5_esw_offloads_devlink_port(ptr noundef %84, i16 noundef zeroext %88) #18
  %tobool27.not.i = icmp eq ptr %call26.i, null
  br i1 %tobool27.not.i, label %if.end22.i.cleanup_crit_edge, label %if.then28.i

if.end22.i.cleanup_crit_edge:                     ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then28.i:                                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #20
  call void @devlink_port_type_eth_set(ptr noundef nonnull %call26.i, ptr noundef nonnull %call1.i) #18
  br label %cleanup

err_cleanup_profile.i:                            ; preds = %if.then19.i, %if.then13.i
  %err.0.i = phi i32 [ %call11.i, %if.then13.i ], [ %call17.i, %if.then19.i ]
  %89 = ptrtoint ptr %profile5.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %profile5.i, align 4
  %cleanup.i = getelementptr inbounds %struct.mlx5e_profile, ptr %90, i32 0, i32 1
  %91 = ptrtoint ptr %cleanup.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %cleanup.i, align 4
  call void %92(ptr noundef %add.ptr.i.i24) #18
  call void @mlx5e_destroy_netdev(ptr noundef %add.ptr.i.i24) #18
  br label %if.then8

if.then8:                                         ; preds = %err_cleanup_profile.i, %do.end.i, %if.then3.if.then8_crit_edge
  %err.0 = phi i32 [ %call4.i, %if.then3.if.then8_crit_edge ], [ %err.0.i, %err_cleanup_profile.i ], [ -22, %do.end.i ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #18
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %if.then28.i, %if.end22.i.cleanup_crit_edge, %if.then9.i, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %err.0, %if.then8 ], [ 0, %if.end22.i.cleanup_crit_edge ], [ 0, %if.then28.i ], [ 0, %if.then9.i ], [ 0, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx5e_vport_rep_unload(ptr nocapture noundef readonly %rep) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rep to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rep, align 4
  %netdev1 = getelementptr inbounds %struct.mlx5e_rep_priv, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %netdev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %netdev1, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 2304
  %ppriv3 = getelementptr i8, ptr %3, i32 30240
  %4 = ptrtoint ptr %ppriv3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ppriv3, align 32
  %vport = getelementptr inbounds %struct.mlx5_eswitch_rep, ptr %rep, i32 0, i32 1
  %6 = ptrtoint ptr %vport to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %vport, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %7)
  %cmp = icmp eq i16 %7, -1
  %mdev.i = getelementptr i8, ptr %3, i32 11328
  %8 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mdev.i, align 64
  %eswitch.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %9, i32 0, i32 17, i32 28
  %10 = ptrtoint ptr %eswitch.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %eswitch.i, align 4
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 8
  %vport.i = getelementptr inbounds %struct.mlx5_eswitch_rep, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %vport.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %vport.i, align 4
  %call3.i = tail call ptr @mlx5_esw_offloads_devlink_port(ptr noundef %11, i16 noundef zeroext %15) #18
  %tobool.not.i = icmp eq ptr %call3.i, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br i1 %tobool.not.i, label %if.then.mlx5e_vport_uplink_rep_unload.exit_crit_edge, label %if.then.i

if.then.mlx5e_vport_uplink_rep_unload.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %mlx5e_vport_uplink_rep_unload.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @devlink_port_type_clear(ptr noundef nonnull %call3.i) #18
  br label %mlx5e_vport_uplink_rep_unload.exit

mlx5e_vport_uplink_rep_unload.exit:               ; preds = %if.then.i, %if.then.mlx5e_vport_uplink_rep_unload.exit_crit_edge
  tail call void @mlx5e_netdev_attach_nic_profile(ptr noundef %add.ptr.i) #18
  br label %free_ppriv

if.end:                                           ; preds = %entry
  br i1 %tobool.not.i, label %if.end.if.end10_crit_edge, label %if.then9

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end10

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @devlink_port_type_clear(ptr noundef nonnull %call3.i) #18
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end.if.end10_crit_edge
  tail call void @unregister_netdev(ptr noundef %3) #18
  tail call void @mlx5e_detach_netdev(ptr noundef %add.ptr.i) #18
  %profile = getelementptr i8, ptr %3, i32 30236
  %16 = ptrtoint ptr %profile to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %profile, align 4
  %cleanup = getelementptr inbounds %struct.mlx5e_profile, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %cleanup to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cleanup, align 4
  tail call void %19(ptr noundef %add.ptr.i) #18
  tail call void @mlx5e_destroy_netdev(ptr noundef %add.ptr.i) #18
  br label %free_ppriv

free_ppriv:                                       ; preds = %if.end10, %mlx5e_vport_uplink_rep_unload.exit
  tail call void @kfree(ptr noundef %5) #18
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @mlx5e_vport_rep_get_proto_dev(ptr nocapture noundef readonly %rep) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rep to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rep, align 4
  %netdev = getelementptr inbounds %struct.mlx5e_rep_priv, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %netdev, align 8
  ret ptr %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5e_vport_rep_event(ptr noundef %esw, ptr noundef %rep, i32 noundef %event, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %event, label %entry.if.end3_crit_edge [
    i32 0, label %if.then
    i32 1, label %if.then2
  ]

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end3

if.then:                                          ; preds = %entry
  %1 = ptrtoint ptr %rep to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %rep, align 4
  %vport_sqs_list.i = getelementptr inbounds %struct.mlx5e_rep_priv, ptr %2, i32 0, i32 5
  %3 = ptrtoint ptr %vport_sqs_list.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn24.i = load ptr, ptr %vport_sqs_list.i, align 4
  %cmp.not25.i = icmp eq ptr %.pn24.i, %vport_sqs_list.i
  br i1 %cmp.not25.i, label %if.then.if.end3_crit_edge, label %if.then.for.body.i_crit_edge

if.then.for.body.i_crit_edge:                     ; preds = %if.then
  br label %for.body.i

if.then.if.end3_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end3

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then.for.body.i_crit_edge
  %.pn26.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn24.i, %if.then.for.body.i_crit_edge ]
  %send_to_vport_rule_peer.i = getelementptr i8, ptr %.pn26.i, i32 -8
  %4 = ptrtoint ptr %send_to_vport_rule_peer.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %send_to_vport_rule_peer.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %sqn.i = getelementptr i8, ptr %.pn26.i, i32 -4
  %6 = ptrtoint ptr %sqn.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sqn.i, align 4
  %call2.i = tail call ptr @mlx5_eswitch_add_send_to_vport_rule(ptr noundef %data, ptr noundef %esw, ptr noundef %rep, i32 noundef %7) #18
  %cmp.i.i = icmp ugt ptr %call2.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %err_out.i, label %if.end5.i

if.end5.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  %8 = ptrtoint ptr %send_to_vport_rule_peer.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call2.i, ptr %send_to_vport_rule_peer.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end5.i, %for.body.i.for.inc.i_crit_edge
  %9 = ptrtoint ptr %.pn26.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn.i = load ptr, ptr %.pn26.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %vport_sqs_list.i
  br i1 %cmp.not.i, label %for.inc.i.if.end3_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i

for.inc.i.if.end3_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end3

err_out.i:                                        ; preds = %if.end.i
  %10 = ptrtoint ptr %rep to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rep, align 4
  %vport_sqs_list.i.i = getelementptr inbounds %struct.mlx5e_rep_priv, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %vport_sqs_list.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn14.i.i = load ptr, ptr %vport_sqs_list.i.i, align 4
  %cmp.not15.i.i = icmp eq ptr %.pn14.i.i, %vport_sqs_list.i.i
  br i1 %cmp.not15.i.i, label %err_out.i.mlx5e_vport_rep_event_unpair.exit.i_crit_edge, label %err_out.i.for.body.i.i_crit_edge

err_out.i.for.body.i.i_crit_edge:                 ; preds = %err_out.i
  br label %for.body.i.i

err_out.i.mlx5e_vport_rep_event_unpair.exit.i_crit_edge: ; preds = %err_out.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %mlx5e_vport_rep_event_unpair.exit.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %err_out.i.for.body.i.i_crit_edge
  %.pn16.i.i = phi ptr [ %.pn.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %.pn14.i.i, %err_out.i.for.body.i.i_crit_edge ]
  %send_to_vport_rule_peer.i.i = getelementptr i8, ptr %.pn16.i.i, i32 -8
  %13 = ptrtoint ptr %send_to_vport_rule_peer.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %send_to_vport_rule_peer.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %14, null
  br i1 %tobool.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.end.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.i.i

if.end.i.i:                                       ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @mlx5_eswitch_del_send_to_vport_rule(ptr noundef nonnull %14) #18
  %15 = ptrtoint ptr %send_to_vport_rule_peer.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %send_to_vport_rule_peer.i.i, align 4
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.end.i.i, %for.body.i.i.for.inc.i.i_crit_edge
  %16 = ptrtoint ptr %.pn16.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pn.i.i = load ptr, ptr %.pn16.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %vport_sqs_list.i.i
  br i1 %cmp.not.i.i, label %for.inc.i.i.mlx5e_vport_rep_event_unpair.exit.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i.i

for.inc.i.i.mlx5e_vport_rep_event_unpair.exit.i_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %mlx5e_vport_rep_event_unpair.exit.i

mlx5e_vport_rep_event_unpair.exit.i:              ; preds = %for.inc.i.i.mlx5e_vport_rep_event_unpair.exit.i_crit_edge, %err_out.i.mlx5e_vport_rep_event_unpair.exit.i_crit_edge
  %17 = ptrtoint ptr %call2.i to i32
  br label %if.end3

if.then2:                                         ; preds = %entry
  %18 = ptrtoint ptr %rep to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rep, align 4
  %vport_sqs_list.i6 = getelementptr inbounds %struct.mlx5e_rep_priv, ptr %19, i32 0, i32 5
  %20 = ptrtoint ptr %vport_sqs_list.i6 to i32
  call void @__asan_load4_noabort(i32 %20)
  %.pn14.i = load ptr, ptr %vport_sqs_list.i6, align 4
  %cmp.not15.i = icmp eq ptr %.pn14.i, %vport_sqs_list.i6
  br i1 %cmp.not15.i, label %if.then2.if.end3_crit_edge, label %if.then2.for.body.i9_crit_edge

if.then2.for.body.i9_crit_edge:                   ; preds = %if.then2
  br label %for.body.i9

if.then2.if.end3_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end3

for.body.i9:                                      ; preds = %for.inc.i13.for.body.i9_crit_edge, %if.then2.for.body.i9_crit_edge
  %.pn16.i = phi ptr [ %.pn.i11, %for.inc.i13.for.body.i9_crit_edge ], [ %.pn14.i, %if.then2.for.body.i9_crit_edge ]
  %send_to_vport_rule_peer.i7 = getelementptr i8, ptr %.pn16.i, i32 -8
  %21 = ptrtoint ptr %send_to_vport_rule_peer.i7 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %send_to_vport_rule_peer.i7, align 4
  %tobool.not.i8 = icmp eq ptr %22, null
  br i1 %tobool.not.i8, label %for.body.i9.for.inc.i13_crit_edge, label %if.end.i10

for.body.i9.for.inc.i13_crit_edge:                ; preds = %for.body.i9
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.i13

if.end.i10:                                       ; preds = %for.body.i9
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @mlx5_eswitch_del_send_to_vport_rule(ptr noundef nonnull %22) #18
  %23 = ptrtoint ptr %send_to_vport_rule_peer.i7 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %send_to_vport_rule_peer.i7, align 4
  br label %for.inc.i13

for.inc.i13:                                      ; preds = %if.end.i10, %for.body.i9.for.inc.i13_crit_edge
  %24 = ptrtoint ptr %.pn16.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %.pn.i11 = load ptr, ptr %.pn16.i, align 4
  %cmp.not.i12 = icmp eq ptr %.pn.i11, %vport_sqs_list.i6
  br i1 %cmp.not.i12, label %for.inc.i13.if.end3_crit_edge, label %for.inc.i13.for.body.i9_crit_edge

for.inc.i13.for.body.i9_crit_edge:                ; preds = %for.inc.i13
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i9

for.inc.i13.if.end3_crit_edge:                    ; preds = %for.inc.i13
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end3

if.end3:                                          ; preds = %for.inc.i13.if.end3_crit_edge, %if.then2.if.end3_crit_edge, %mlx5e_vport_rep_event_unpair.exit.i, %for.inc.i.if.end3_crit_edge, %if.then.if.end3_crit_edge, %entry.if.end3_crit_edge
  %err.0 = phi i32 [ 0, %entry.if.end3_crit_edge ], [ %17, %mlx5e_vport_rep_event_unpair.exit.i ], [ 0, %if.then.if.end3_crit_edge ], [ 0, %if.then2.if.end3_crit_edge ], [ 0, %for.inc.i.if.end3_crit_edge ], [ 0, %for.inc.i13.if.end3_crit_edge ]
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_netdev_change_profile(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devlink_port_type_eth_set(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5e_init_ul_rep(ptr nocapture noundef readonly %mdev, ptr noundef %netdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %call1 = tail call i32 @mlx5e_ipsec_init(ptr noundef %add.ptr.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %0 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev, align 8
  %2 = tail call i32 @llvm.read_register.i32(metadata !103) #18
  %and.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 68
  %6 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i32 noundef 687, i32 noundef %7, i32 noundef %call1) #25
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  tail call void @mlx5e_vxlan_set_netdev_info(ptr noundef %add.ptr.i) #18
  %ppriv.i.i = getelementptr i8, ptr %netdev, i32 30240
  %8 = ptrtoint ptr %ppriv.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ppriv.i.i, align 32
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 8
  %mdev2.i.i = getelementptr i8, ptr %netdev, i32 11328
  %12 = ptrtoint ptr %mdev2.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mdev2.i.i, align 64
  %caps.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %13, i32 0, i32 8
  %14 = ptrtoint ptr %caps.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %caps.i.i, align 8
  %add.ptr.i2.i = getelementptr i32, ptr %15, i32 17
  %16 = ptrtoint ptr %add.ptr.i2.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %add.ptr.i2.i, align 4
  %num_channels.i.i = getelementptr i8, ptr %netdev, i32 6032
  %18 = ptrtoint ptr %num_channels.i.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 1, ptr %num_channels.i.i, align 4
  %hard_mtu.i.i = getelementptr i8, ptr %netdev, i32 6164
  %19 = ptrtoint ptr %hard_mtu.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 22, ptr %hard_mtu.i.i, align 4
  %mtu.i.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 20
  %20 = ptrtoint ptr %mtu.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mtu.i.i, align 4
  %sw_mtu.i.i = getelementptr i8, ptr %netdev, i32 6160
  %22 = ptrtoint ptr %sw_mtu.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %sw_mtu.i.i, align 4
  %vport.i.i = getelementptr inbounds %struct.mlx5_eswitch_rep, ptr %11, i32 0, i32 1
  %23 = ptrtoint ptr %vport.i.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %vport.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %24)
  %cmp.i.i = icmp eq i16 %24, -1
  %..i.i = select i1 %cmp.i.i, i8 10, i8 7
  %params3.i.i = getelementptr i8, ptr %netdev, i32 6028
  %25 = ptrtoint ptr %params3.i.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %..i.i, ptr %params3.i.i, align 4
  %26 = lshr i32 %17, 20
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  tail call void @mlx5e_build_rq_params(ptr noundef %13, ptr noundef %params3.i.i) #18
  %29 = ptrtoint ptr %caps.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %caps.i.i, align 8
  %add.ptr12.i.i = getelementptr i32, ptr %30, i32 17
  %31 = ptrtoint ptr %add.ptr12.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %add.ptr12.i.i, align 4
  %rx_dim_enabled.i.i = getelementptr i8, ptr %netdev, i32 6143
  %33 = lshr i32 %32, 29
  %34 = trunc i32 %33 to i8
  %35 = and i8 %34, 1
  %36 = ptrtoint ptr %rx_dim_enabled.i.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %rx_dim_enabled.i.i, align 1
  tail call void @mlx5e_set_rx_cq_mode_params(ptr noundef %params3.i.i, i8 noundef zeroext %28) #18
  %num_tc.i.i = getelementptr i8, ptr %netdev, i32 6038
  %37 = ptrtoint ptr %num_tc.i.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 1, ptr %num_tc.i.i, align 2
  %tunneled_offload_en.i.i = getelementptr i8, ptr %netdev, i32 6109
  %38 = ptrtoint ptr %tunneled_offload_en.i.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %tunneled_offload_en.i.i, align 1
  %39 = ptrtoint ptr %num_channels.i.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %num_channels.i.i, align 4
  %conv17.i.i = zext i16 %40 to i32
  %num_tc_x_num_ch.i.i = getelementptr i8, ptr %netdev, i32 30128
  %41 = ptrtoint ptr %num_tc_x_num_ch.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %conv17.i.i, ptr %num_tc_x_num_ch.i.i, align 16
  %tx_min_inline_mode.i.i = getelementptr i8, ptr %netdev, i32 6140
  tail call void @mlx5_query_min_inline(ptr noundef %13, ptr noundef %tx_min_inline_mode.i.i) #18
  tail call void @mlx5e_timestamp_init(ptr noundef %add.ptr.i) #18
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx5e_cleanup_rep(ptr noundef %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mlx5e_ipsec_cleanup(ptr noundef %priv) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5e_init_ul_rep_rx(ptr noundef %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mlx5e_create_q_counters(ptr noundef %priv) #18
  %call = tail call i32 @mlx5e_init_rep_rx(ptr noundef %priv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @mlx5e_tc_int_port_init_rep_rx(ptr noundef %priv) #18
  br label %out

out:                                              ; preds = %if.end, %entry.out_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx5e_cleanup_ul_rep_rx(ptr noundef %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mlx5e_tc_int_port_cleanup_rep_rx(ptr noundef %priv) #18
  tail call void @mlx5e_cleanup_rep_rx(ptr noundef %priv)
  tail call void @mlx5e_destroy_q_counters(ptr noundef %priv) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5e_init_rep_tx(ptr noundef %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %ppriv = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 43
  %0 = ptrtoint ptr %ppriv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ppriv, align 32
  %call = tail call i32 @mlx5e_create_tises(ptr noundef %priv) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %mdev = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %2 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mdev, align 64
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %6 = tail call i32 @llvm.read_register.i32(metadata !103) #18
  %and.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 68
  %10 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %5, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, i32 noundef 934, i32 noundef %11, i32 noundef %call) #25
  br label %cleanup

if.end:                                           ; preds = %entry
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 8
  %vport = getelementptr inbounds %struct.mlx5_eswitch_rep, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %vport to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %vport, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %15)
  %cmp = icmp eq i16 %15, -1
  br i1 %cmp, label %if.then3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then3:                                         ; preds = %if.end
  %netdev1.i = getelementptr inbounds %struct.mlx5e_rep_priv, ptr %1, i32 0, i32 2
  %16 = ptrtoint ptr %netdev1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %netdev1.i, align 8
  %call3.i = tail call i32 @mlx5e_rep_tc_init(ptr noundef %1) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then3.destroy_tises_crit_edge

if.then3.destroy_tises_crit_edge:                 ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #20
  br label %destroy_tises

if.end.i:                                         ; preds = %if.then3
  %tun_entropy.i = getelementptr inbounds %struct.mlx5e_rep_priv, ptr %1, i32 0, i32 6, i32 2
  %mdev.i = getelementptr i8, ptr %17, i32 11328
  %18 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mdev.i, align 64
  tail call void @mlx5_init_port_tun_entropy(ptr noundef %tun_entropy.i, ptr noundef %19) #18
  %call4.i = tail call i32 @mlx5e_rep_bond_init(ptr noundef %1) #18
  %call5.i = tail call i32 @mlx5e_rep_tc_netdevice_event_register(ptr noundef %1) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end.i.cleanup_crit_edge, label %do.end.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  %20 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mdev.i, align 64
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 8
  %24 = tail call i32 @llvm.read_register.i32(metadata !103) #18
  %and.i.i = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %task.i, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %27, i32 0, i32 68
  %28 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %pid.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28, i32 noundef 915, i32 noundef %29, i32 noundef %call5.i) #25
  tail call void @mlx5e_rep_bond_cleanup(ptr noundef %1) #18
  tail call void @mlx5e_rep_tc_cleanup(ptr noundef %1) #18
  br label %destroy_tises

destroy_tises:                                    ; preds = %do.end.i, %if.then3.destroy_tises_crit_edge
  %retval.0.i.ph = phi i32 [ %call3.i, %if.then3.destroy_tises_crit_edge ], [ %call5.i, %do.end.i ]
  tail call void @mlx5e_destroy_tises(ptr noundef %priv) #18
  br label %cleanup

cleanup:                                          ; preds = %destroy_tises, %if.end.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %retval.0.i.ph, %destroy_tises ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx5e_cleanup_rep_tx(ptr noundef %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %ppriv = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 43
  %0 = ptrtoint ptr %ppriv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ppriv, align 32
  tail call void @mlx5e_destroy_tises(ptr noundef %priv) #18
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %vport = getelementptr inbounds %struct.mlx5_eswitch_rep, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %vport to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %vport, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %5)
  %cmp = icmp eq i16 %5, -1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @mlx5e_rep_tc_netdevice_event_unregister(ptr noundef %1) #18
  tail call void @mlx5e_rep_bond_cleanup(ptr noundef %1) #18
  tail call void @mlx5e_rep_tc_cleanup(ptr noundef %1) #18
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx5e_uplink_rep_enable(ptr noundef %priv) #0 align 64 {
entry:
  %max_mtu = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %ppriv = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 43
  %0 = ptrtoint ptr %ppriv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ppriv, align 32
  %netdev1 = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 22
  %2 = ptrtoint ptr %netdev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %netdev1, align 4
  %mdev2 = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %4 = ptrtoint ptr %mdev2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mdev2, align 64
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %max_mtu) #18
  %6 = ptrtoint ptr %max_mtu to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 -1, ptr %max_mtu, align 2, !annotation !115
  %min_mtu = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 30
  %7 = ptrtoint ptr %min_mtu to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 68, ptr %min_mtu, align 8
  %8 = ptrtoint ptr %mdev2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mdev2, align 64
  call void @mlx5_query_port_max_mtu(ptr noundef %9, ptr noundef nonnull %max_mtu, i8 noundef zeroext 1) #18
  %10 = ptrtoint ptr %max_mtu to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %max_mtu, align 2
  %conv = zext i16 %11 to i32
  %hard_mtu = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 9, i32 3, i32 19
  %12 = ptrtoint ptr %hard_mtu to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %hard_mtu, align 4
  %sub = sub i32 %conv, %13
  %max_mtu4 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 31
  %14 = ptrtoint ptr %max_mtu4 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %sub, ptr %max_mtu4, align 4
  %call = call i32 @mlx5e_set_dev_port_mtu(ptr noundef %priv) #18
  call void @mlx5e_rep_tc_enable(ptr noundef %priv) #18
  %caps = getelementptr inbounds %struct.mlx5_core_dev, ptr %5, i32 0, i32 8
  %15 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %caps, align 8
  %add.ptr = getelementptr i32, ptr %16, i32 5
  %17 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %add.ptr, align 4
  %19 = and i32 %18, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not = icmp eq i32 %19, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %call5 = call i32 @mlx5_modify_vport_admin_state(ptr noundef %5, i8 noundef zeroext 2, i16 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 2) #18
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @mlx5_lag_add_netdev(ptr noundef %5, ptr noundef %3) #18
  %events_nb = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 37
  %20 = ptrtoint ptr %events_nb to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @uplink_rep_async_event, ptr %events_nb, align 8
  %call7 = call i32 @mlx5_notifier_register(ptr noundef %5, ptr noundef %events_nb) #18
  call void @mlx5e_dcbnl_initialize(ptr noundef %priv) #18
  call void @mlx5e_dcbnl_init_app(ptr noundef %priv) #18
  %call8 = call i32 @mlx5e_rep_neigh_init(ptr noundef %1) #18
  call void @mlx5e_rep_bridge_init(ptr noundef %priv) #18
  %wanted_features = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 25
  %21 = ptrtoint ptr %wanted_features to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %wanted_features, align 32
  %or = or i64 %22, 562949953421312
  store i64 %or, ptr %wanted_features, align 32
  call void @rtnl_lock() #18
  %state.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 6
  %23 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end.if.end12_crit_edge, label %if.then10

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end12

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %call11 = call i32 @mlx5e_open(ptr noundef %3) #18
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end.if.end12_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @udp_tunnel_nic_ops to i32))
  %25 = load ptr, ptr @udp_tunnel_nic_ops, align 4
  %tobool.not.i = icmp eq ptr %25, null
  br i1 %tobool.not.i, label %if.end12.udp_tunnel_nic_reset_ntf.exit_crit_edge, label %if.then.i

if.end12.udp_tunnel_nic_reset_ntf.exit_crit_edge: ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #20
  br label %udp_tunnel_nic_reset_ntf.exit

if.then.i:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #20
  %26 = ptrtoint ptr %netdev1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %netdev1, align 4
  %reset_ntf.i = getelementptr inbounds %struct.udp_tunnel_nic_ops, ptr %25, i32 0, i32 4
  %28 = ptrtoint ptr %reset_ntf.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %reset_ntf.i, align 4
  call void %29(ptr noundef %27) #18
  br label %udp_tunnel_nic_reset_ntf.exit

udp_tunnel_nic_reset_ntf.exit:                    ; preds = %if.then.i, %if.end12.udp_tunnel_nic_reset_ntf.exit_crit_edge
  call void @netif_device_attach(ptr noundef %3) #18
  call void @rtnl_unlock() #18
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %max_mtu) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx5e_uplink_rep_disable(ptr noundef %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %ppriv = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 43
  %0 = ptrtoint ptr %ppriv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ppriv, align 32
  %mdev1 = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %2 = ptrtoint ptr %mdev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mdev1, align 64
  tail call void @rtnl_lock() #18
  %netdev = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 22
  %4 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %netdev, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %call3 = tail call i32 @mlx5e_close(ptr noundef %5) #18
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %8 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %netdev, align 4
  tail call void @netif_device_detach(ptr noundef %9) #18
  tail call void @rtnl_unlock() #18
  tail call void @mlx5e_rep_bridge_cleanup(ptr noundef %priv) #18
  tail call void @mlx5e_rep_neigh_cleanup(ptr noundef %1) #18
  tail call void @mlx5e_dcbnl_delete_app(ptr noundef %priv) #18
  %events_nb = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 37
  %call5 = tail call i32 @mlx5_notifier_unregister(ptr noundef %3, ptr noundef %events_nb) #18
  tail call void @mlx5e_rep_tc_disable(ptr noundef %priv) #18
  %10 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %netdev, align 4
  tail call void @mlx5_lag_remove_netdev(ptr noundef %3, ptr noundef %11) #18
  %vxlan = getelementptr inbounds %struct.mlx5_core_dev, ptr %3, i32 0, i32 22
  %12 = ptrtoint ptr %vxlan to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vxlan, align 4
  tail call void @mlx5_vxlan_reset_to_default(ptr noundef %13) #18
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mlx5e_update_rep_rx(ptr nocapture noundef readnone %priv) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_stats_update_ndo_stats(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_update_carrier(ptr noundef) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mlx5e_ul_rep_stats_grps_num(ptr nocapture noundef readnone %priv) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 16
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_ipsec_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_vxlan_set_netdev_info(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5e_init_rep(ptr nocapture noundef readnone %mdev, ptr noundef %netdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %ppriv.i = getelementptr i8, ptr %netdev, i32 30240
  %0 = ptrtoint ptr %ppriv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ppriv.i, align 32
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %mdev2.i = getelementptr i8, ptr %netdev, i32 11328
  %4 = ptrtoint ptr %mdev2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mdev2.i, align 64
  %caps.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %caps.i, align 8
  %add.ptr.i2 = getelementptr i32, ptr %7, i32 17
  %8 = ptrtoint ptr %add.ptr.i2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr.i2, align 4
  %num_channels.i = getelementptr i8, ptr %netdev, i32 6032
  %10 = ptrtoint ptr %num_channels.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 1, ptr %num_channels.i, align 4
  %hard_mtu.i = getelementptr i8, ptr %netdev, i32 6164
  %11 = ptrtoint ptr %hard_mtu.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 22, ptr %hard_mtu.i, align 4
  %mtu.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 20
  %12 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mtu.i, align 4
  %sw_mtu.i = getelementptr i8, ptr %netdev, i32 6160
  %14 = ptrtoint ptr %sw_mtu.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %sw_mtu.i, align 4
  %vport.i = getelementptr inbounds %struct.mlx5_eswitch_rep, ptr %3, i32 0, i32 1
  %15 = ptrtoint ptr %vport.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %vport.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %16)
  %cmp.i = icmp eq i16 %16, -1
  %..i = select i1 %cmp.i, i8 10, i8 7
  %params3.i = getelementptr i8, ptr %netdev, i32 6028
  %17 = ptrtoint ptr %params3.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %..i, ptr %params3.i, align 4
  %18 = lshr i32 %9, 20
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  tail call void @mlx5e_build_rq_params(ptr noundef %5, ptr noundef %params3.i) #18
  %21 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %caps.i, align 8
  %add.ptr12.i = getelementptr i32, ptr %22, i32 17
  %23 = ptrtoint ptr %add.ptr12.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %add.ptr12.i, align 4
  %rx_dim_enabled.i = getelementptr i8, ptr %netdev, i32 6143
  %25 = lshr i32 %24, 29
  %26 = trunc i32 %25 to i8
  %27 = and i8 %26, 1
  %28 = ptrtoint ptr %rx_dim_enabled.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %rx_dim_enabled.i, align 1
  tail call void @mlx5e_set_rx_cq_mode_params(ptr noundef %params3.i, i8 noundef zeroext %20) #18
  %num_tc.i = getelementptr i8, ptr %netdev, i32 6038
  %29 = ptrtoint ptr %num_tc.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 1, ptr %num_tc.i, align 2
  %tunneled_offload_en.i = getelementptr i8, ptr %netdev, i32 6109
  %30 = ptrtoint ptr %tunneled_offload_en.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %tunneled_offload_en.i, align 1
  %31 = ptrtoint ptr %num_channels.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %num_channels.i, align 4
  %conv17.i = zext i16 %32 to i32
  %num_tc_x_num_ch.i = getelementptr i8, ptr %netdev, i32 30128
  %33 = ptrtoint ptr %num_tc_x_num_ch.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %conv17.i, ptr %num_tc_x_num_ch.i, align 16
  %tx_min_inline_mode.i = getelementptr i8, ptr %netdev, i32 6140
  tail call void @mlx5_query_min_inline(ptr noundef %5, ptr noundef %tx_min_inline_mode.i) #18
  tail call void @mlx5e_timestamp_init(ptr noundef %add.ptr.i) #18
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_timestamp_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_build_rq_params(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_set_rx_cq_mode_params(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_query_min_inline(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_ipsec_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_create_q_counters(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5e_init_rep_rx(ptr noundef %priv) #0 align 64 {
entry:
  %dest.i = alloca %struct.mlx5_flow_destination, align 4
  %ft_attr.i = alloca %struct.mlx5_flow_table_attr, align 4
  %ttc_params.i = alloca %struct.ttc_params, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %mdev1 = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %0 = ptrtoint ptr %mdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev1, align 64
  %call = tail call ptr @mlx5e_rx_res_alloc() #18
  %rx_res = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 11
  %2 = ptrtoint ptr %rx_res to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %rx_res, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @mlx5e_init_l2_addr(ptr noundef %priv) #18
  %drop_rq = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 8
  %call3 = tail call i32 @mlx5e_open_drop_rq(ptr noundef %priv, ptr noundef %drop_rq) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end7, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 8
  %5 = tail call i32 @llvm.read_register.i32(metadata !103) #18
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 68
  %9 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21, i32 noundef 820, i32 noundef %10, i32 noundef %call3) #25
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %11 = ptrtoint ptr %rx_res to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rx_res, align 4
  %13 = ptrtoint ptr %mdev1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mdev1, align 64
  %max_nch = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 30
  %15 = ptrtoint ptr %max_nch to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %max_nch, align 2
  %conv = zext i16 %16 to i32
  %rqn = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 8, i32 30
  %17 = ptrtoint ptr %rqn to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %rqn, align 4
  %packet_merge = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 9, i32 3, i32 9
  %num_channels = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 9, i32 3, i32 3
  %19 = ptrtoint ptr %num_channels to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %num_channels, align 4
  %conv13 = zext i16 %20 to i32
  %call14 = tail call i32 @mlx5e_rx_res_init(ptr noundef %12, ptr noundef %14, i32 noundef 0, i32 noundef %conv, i32 noundef %18, ptr noundef %packet_merge, i32 noundef %conv13) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end7.err_close_drop_rq_crit_edge

if.end7.err_close_drop_rq_crit_edge:              ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #20
  br label %err_close_drop_rq

if.end17:                                         ; preds = %if.end7
  %ppriv.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 43
  %21 = ptrtoint ptr %ppriv.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ppriv.i, align 32
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 8
  call void @llvm.lifetime.start.p0(i64 316, ptr nonnull %ttc_params.i) #18
  %25 = call ptr @memset(ptr %ttc_params.i, i32 0, i32 316)
  %26 = ptrtoint ptr %mdev1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mdev1, align 64
  %call.i = tail call ptr @mlx5_get_flow_namespace(ptr noundef %27, i32 noundef 4) #18
  %fs.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 13
  %28 = ptrtoint ptr %fs.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call.i, ptr %fs.i, align 4
  call void @mlx5e_set_ttc_params(ptr noundef %priv, ptr noundef nonnull %ttc_params.i, i1 noundef zeroext false) #18
  %vport.i = getelementptr inbounds %struct.mlx5_eswitch_rep, ptr %24, i32 0, i32 1
  %29 = ptrtoint ptr %vport.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %vport.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %30)
  %cmp.not.i = icmp eq i16 %30, -1
  br i1 %cmp.not.i, label %if.end17.if.end.i_crit_edge, label %if.then.i

if.end17.if.end.i_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.i

if.then.i:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #20
  %level.i = getelementptr inbounds %struct.ttc_params, ptr %ttc_params.i, i32 0, i32 1, i32 2
  %31 = ptrtoint ptr %level.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 4, ptr %level.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end17.if.end.i_crit_edge
  %32 = ptrtoint ptr %mdev1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mdev1, align 64
  %call4.i = call ptr @mlx5_create_ttc_table(ptr noundef %33, ptr noundef nonnull %ttc_params.i) #18
  %ttc.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 13, i32 7
  %34 = ptrtoint ptr %ttc.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call4.i, ptr %ttc.i, align 4
  %cmp.i.i = icmp ugt ptr %call4.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %mlx5e_create_rep_ttc_table.exit, label %mlx5e_create_rep_ttc_table.exit.thread

mlx5e_create_rep_ttc_table.exit.thread:           ; preds = %if.end.i
  call void @llvm.lifetime.end.p0(i64 316, ptr nonnull %ttc_params.i) #18
  %35 = ptrtoint ptr %ppriv.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ppriv.i, align 32
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %36, align 8
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %ft_attr.i) #18
  %39 = getelementptr inbounds i8, ptr %ft_attr.i, i32 12
  %40 = call ptr @memset(ptr %39, i32 0, i32 16)
  %vport.i64 = getelementptr inbounds %struct.mlx5_eswitch_rep, ptr %38, i32 0, i32 1
  %41 = ptrtoint ptr %vport.i64 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %vport.i64, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %42)
  %cmp.not.i65 = icmp eq i16 %42, -1
  br i1 %cmp.not.i65, label %if.end.i70, label %if.then.i68

mlx5e_create_rep_ttc_table.exit:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  %43 = ptrtoint ptr %call4.i to i32
  %netdev.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 22
  %44 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %netdev.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %45, ptr noundef nonnull @.str.22, i32 noundef %43) #25
  call void @llvm.lifetime.end.p0(i64 316, ptr nonnull %ttc_params.i) #18
  br label %err_destroy_rx_res

if.then.i68:                                      ; preds = %mlx5e_create_rep_ttc_table.exit.thread
  call void @__sanitizer_cov_trace_pc() #20
  %46 = ptrtoint ptr %ttc.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ttc.i, align 4
  %call.i67 = call ptr @mlx5_get_ttc_flow_table(ptr noundef %47) #18
  %root_ft.i = getelementptr inbounds %struct.mlx5e_rep_priv, ptr %36, i32 0, i32 3
  %48 = ptrtoint ptr %root_ft.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call.i67, ptr %root_ft.i, align 4
  br label %mlx5e_create_rep_root_ft.exit.thread

if.end.i70:                                       ; preds = %mlx5e_create_rep_ttc_table.exit.thread
  %49 = ptrtoint ptr %mdev1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %mdev1, align 64
  %call3.i = call ptr @mlx5_get_flow_namespace(ptr noundef %50, i32 noundef 2) #18
  %tobool.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool.not.i, label %mlx5e_create_rep_root_ft.exit.thread94, label %if.end5.i

mlx5e_create_rep_root_ft.exit.thread94:           ; preds = %if.end.i70
  call void @__sanitizer_cov_trace_pc() #20
  %netdev.i71 = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 22
  %51 = ptrtoint ptr %netdev.i71 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %netdev.i71, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %52, ptr noundef nonnull @.str.23) #25
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %ft_attr.i) #18
  br label %err_destroy_ttc_table

if.end5.i:                                        ; preds = %if.end.i70
  %max_fte.i = getelementptr inbounds %struct.mlx5_flow_table_attr, ptr %ft_attr.i, i32 0, i32 1
  %53 = ptrtoint ptr %max_fte.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %max_fte.i, align 4
  %54 = ptrtoint ptr %ft_attr.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 1, ptr %ft_attr.i, align 4
  %level.i72 = getelementptr inbounds %struct.mlx5_flow_table_attr, ptr %ft_attr.i, i32 0, i32 2
  %55 = ptrtoint ptr %level.i72 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 1, ptr %level.i72, align 4
  %call6.i = call ptr @mlx5_create_flow_table(ptr noundef nonnull %call3.i, ptr noundef nonnull %ft_attr.i) #18
  %root_ft7.i = getelementptr inbounds %struct.mlx5e_rep_priv, ptr %36, i32 0, i32 3
  %56 = ptrtoint ptr %root_ft7.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %call6.i, ptr %root_ft7.i, align 4
  %cmp.i.i73 = icmp ugt ptr %call6.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i73, label %mlx5e_create_rep_root_ft.exit, label %if.end5.i.mlx5e_create_rep_root_ft.exit.thread_crit_edge

if.end5.i.mlx5e_create_rep_root_ft.exit.thread_crit_edge: ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %mlx5e_create_rep_root_ft.exit.thread

mlx5e_create_rep_root_ft.exit.thread:             ; preds = %if.end5.i.mlx5e_create_rep_root_ft.exit.thread_crit_edge, %if.then.i68
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %ft_attr.i) #18
  %57 = ptrtoint ptr %mdev1 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %mdev1, align 64
  %eswitch.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %58, i32 0, i32 17, i32 28
  %59 = ptrtoint ptr %eswitch.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %eswitch.i, align 4
  %61 = ptrtoint ptr %ppriv.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %ppriv.i, align 32
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %62, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %dest.i) #18
  %65 = getelementptr inbounds i8, ptr %dest.i, i32 8
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_storeN_noabort(i32 %66, i32 8)
  store i64 -1, ptr %65, align 4
  %67 = ptrtoint ptr %dest.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 1, ptr %dest.i, align 4
  %root_ft.i77 = getelementptr inbounds %struct.mlx5e_rep_priv, ptr %62, i32 0, i32 3
  %68 = ptrtoint ptr %root_ft.i77 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %root_ft.i77, align 4
  %70 = getelementptr inbounds %struct.mlx5_flow_destination, ptr %dest.i, i32 0, i32 1
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %69, ptr %70, align 4
  %vport.i78 = getelementptr inbounds %struct.mlx5_eswitch_rep, ptr %64, i32 0, i32 1
  %72 = ptrtoint ptr %vport.i78 to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %vport.i78, align 4
  %call.i79 = call ptr @mlx5_eswitch_create_vport_rx_rule(ptr noundef %60, i16 noundef zeroext %73, ptr noundef nonnull %dest.i) #18
  %cmp.i.i80 = icmp ugt ptr %call.i79, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i80, label %mlx5e_create_rep_vport_rx_rule.exit, label %mlx5e_create_rep_vport_rx_rule.exit.thread

mlx5e_create_rep_root_ft.exit:                    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #20
  %74 = ptrtoint ptr %call6.i to i32
  %75 = ptrtoint ptr %root_ft7.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr null, ptr %root_ft7.i, align 4
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %ft_attr.i) #18
  br label %err_destroy_ttc_table

mlx5e_create_rep_vport_rx_rule.exit.thread:       ; preds = %mlx5e_create_rep_root_ft.exit.thread
  call void @__sanitizer_cov_trace_pc() #20
  %vport_rx_rule.i = getelementptr inbounds %struct.mlx5e_rep_priv, ptr %62, i32 0, i32 4
  %76 = ptrtoint ptr %vport_rx_rule.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %call.i79, ptr %vport_rx_rule.i, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %dest.i) #18
  call void @mlx5e_ethtool_init_steering(ptr noundef %priv) #18
  br label %cleanup

mlx5e_create_rep_vport_rx_rule.exit:              ; preds = %mlx5e_create_rep_root_ft.exit.thread
  %77 = ptrtoint ptr %call.i79 to i32
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %dest.i) #18
  %78 = ptrtoint ptr %ppriv.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %ppriv.i, align 32
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %79, align 8
  %vport.i85 = getelementptr inbounds %struct.mlx5_eswitch_rep, ptr %81, i32 0, i32 1
  %82 = ptrtoint ptr %vport.i85 to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %vport.i85, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %83)
  %cmp.not.i86 = icmp eq i16 %83, -1
  br i1 %cmp.not.i86, label %if.end.i89, label %mlx5e_create_rep_vport_rx_rule.exit.err_destroy_ttc_table_crit_edge

mlx5e_create_rep_vport_rx_rule.exit.err_destroy_ttc_table_crit_edge: ; preds = %mlx5e_create_rep_vport_rx_rule.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %err_destroy_ttc_table

if.end.i89:                                       ; preds = %mlx5e_create_rep_vport_rx_rule.exit
  call void @__sanitizer_cov_trace_pc() #20
  %root_ft.i87 = getelementptr inbounds %struct.mlx5e_rep_priv, ptr %79, i32 0, i32 3
  %84 = ptrtoint ptr %root_ft.i87 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %root_ft.i87, align 4
  %call.i88 = call i32 @mlx5_destroy_flow_table(ptr noundef %85) #18
  br label %err_destroy_ttc_table

err_destroy_ttc_table:                            ; preds = %if.end.i89, %mlx5e_create_rep_vport_rx_rule.exit.err_destroy_ttc_table_crit_edge, %mlx5e_create_rep_root_ft.exit, %mlx5e_create_rep_root_ft.exit.thread94
  %err.0 = phi i32 [ %74, %mlx5e_create_rep_root_ft.exit ], [ -95, %mlx5e_create_rep_root_ft.exit.thread94 ], [ %77, %mlx5e_create_rep_vport_rx_rule.exit.err_destroy_ttc_table_crit_edge ], [ %77, %if.end.i89 ]
  %86 = ptrtoint ptr %ttc.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %ttc.i, align 4
  call void @mlx5_destroy_ttc_table(ptr noundef %87) #18
  br label %err_destroy_rx_res

err_destroy_rx_res:                               ; preds = %err_destroy_ttc_table, %mlx5e_create_rep_ttc_table.exit
  %err.1 = phi i32 [ %43, %mlx5e_create_rep_ttc_table.exit ], [ %err.0, %err_destroy_ttc_table ]
  %88 = ptrtoint ptr %rx_res to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %rx_res, align 4
  call void @mlx5e_rx_res_destroy(ptr noundef %89) #18
  br label %err_close_drop_rq

err_close_drop_rq:                                ; preds = %err_destroy_rx_res, %if.end7.err_close_drop_rq_crit_edge
  %err.2 = phi i32 [ %call14, %if.end7.err_close_drop_rq_crit_edge ], [ %err.1, %err_destroy_rx_res ]
  call void @mlx5e_close_drop_rq(ptr noundef %drop_rq) #18
  %90 = ptrtoint ptr %rx_res to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %rx_res, align 4
  call void @mlx5e_rx_res_free(ptr noundef %91) #18
  %92 = ptrtoint ptr %rx_res to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr null, ptr %rx_res, align 4
  br label %cleanup

cleanup:                                          ; preds = %err_close_drop_rq, %mlx5e_create_rep_vport_rx_rule.exit.thread, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %do.end ], [ %err.2, %err_close_drop_rq ], [ 0, %mlx5e_create_rep_vport_rx_rule.exit.thread ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_tc_int_port_init_rep_rx(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5e_rx_res_alloc() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_init_l2_addr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_open_drop_rq(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_rx_res_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_ethtool_init_steering(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_destroy_ttc_table(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_rx_res_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_close_drop_rq(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_rx_res_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_get_flow_namespace(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_set_ttc_params(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_create_ttc_table(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_get_ttc_flow_table(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_create_flow_table(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_destroy_flow_table(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_tc_int_port_cleanup_rep_rx(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx5e_cleanup_rep_rx(ptr noundef %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mlx5e_ethtool_cleanup_steering(ptr noundef %priv) #18
  %ppriv.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 43
  %0 = ptrtoint ptr %ppriv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ppriv.i, align 32
  %vport_rx_rule.i = getelementptr inbounds %struct.mlx5e_rep_priv, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %vport_rx_rule.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vport_rx_rule.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.rep_vport_rx_rule_destroy.exit_crit_edge, label %if.end.i

entry.rep_vport_rx_rule_destroy.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %rep_vport_rx_rule_destroy.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @mlx5_del_flow_rules(ptr noundef nonnull %3) #18
  %4 = ptrtoint ptr %vport_rx_rule.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %vport_rx_rule.i, align 8
  br label %rep_vport_rx_rule_destroy.exit

rep_vport_rx_rule_destroy.exit:                   ; preds = %if.end.i, %entry.rep_vport_rx_rule_destroy.exit_crit_edge
  %5 = ptrtoint ptr %ppriv.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ppriv.i, align 32
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 8
  %vport.i = getelementptr inbounds %struct.mlx5_eswitch_rep, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %vport.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %vport.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %10)
  %cmp.not.i = icmp eq i16 %10, -1
  br i1 %cmp.not.i, label %if.end.i11, label %rep_vport_rx_rule_destroy.exit.mlx5e_destroy_rep_root_ft.exit_crit_edge

rep_vport_rx_rule_destroy.exit.mlx5e_destroy_rep_root_ft.exit_crit_edge: ; preds = %rep_vport_rx_rule_destroy.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %mlx5e_destroy_rep_root_ft.exit

if.end.i11:                                       ; preds = %rep_vport_rx_rule_destroy.exit
  call void @__sanitizer_cov_trace_pc() #20
  %root_ft.i = getelementptr inbounds %struct.mlx5e_rep_priv, ptr %6, i32 0, i32 3
  %11 = ptrtoint ptr %root_ft.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %root_ft.i, align 4
  %call.i = tail call i32 @mlx5_destroy_flow_table(ptr noundef %12) #18
  br label %mlx5e_destroy_rep_root_ft.exit

mlx5e_destroy_rep_root_ft.exit:                   ; preds = %if.end.i11, %rep_vport_rx_rule_destroy.exit.mlx5e_destroy_rep_root_ft.exit_crit_edge
  %ttc = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 13, i32 7
  %13 = ptrtoint ptr %ttc to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ttc, align 4
  tail call void @mlx5_destroy_ttc_table(ptr noundef %14) #18
  %rx_res = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 11
  %15 = ptrtoint ptr %rx_res to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rx_res, align 4
  tail call void @mlx5e_rx_res_destroy(ptr noundef %16) #18
  %drop_rq = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 8
  tail call void @mlx5e_close_drop_rq(ptr noundef %drop_rq) #18
  %17 = ptrtoint ptr %rx_res to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rx_res, align 4
  tail call void @mlx5e_rx_res_free(ptr noundef %18) #18
  %19 = ptrtoint ptr %rx_res to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %rx_res, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_destroy_q_counters(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_ethtool_cleanup_steering(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_create_tises(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_destroy_tises(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_rep_tc_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_init_port_tun_entropy(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_rep_bond_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_rep_tc_netdevice_event_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_rep_bond_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_rep_tc_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_rep_tc_netdevice_event_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_query_port_max_mtu(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_set_dev_port_mtu(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_rep_tc_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_lag_add_netdev(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uplink_rep_async_event(ptr noundef %nb, i32 noundef %event, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %event, label %entry.cleanup6_crit_edge [
    i32 9, label %if.then
    i32 129, label %if.then3
  ]

entry.cleanup6_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup6

if.then:                                          ; preds = %entry
  %sub_type = getelementptr inbounds %struct.mlx5_eqe, ptr %data, i32 0, i32 3
  %1 = ptrtoint ptr %sub_type to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %sub_type, align 1
  %3 = zext i8 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.39)
  switch i8 %2, label %if.then.cleanup6_crit_edge [
    i8 1, label %if.then.sw.bb_crit_edge
    i8 4, label %if.then.sw.bb_crit_edge10
  ]

if.then.sw.bb_crit_edge10:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb

if.then.sw.bb_crit_edge:                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb

if.then.cleanup6_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup6

sw.bb:                                            ; preds = %if.then.sw.bb_crit_edge, %if.then.sw.bb_crit_edge10
  %wq = getelementptr i8, ptr %nb, i32 -19016
  %4 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wq, align 16
  %update_carrier_work = getelementptr i8, ptr %nb, i32 -19012
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %5, ptr noundef %update_carrier_work) #18
  br label %cleanup6

if.then3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %add.ptr = getelementptr i8, ptr %nb, i32 -27800
  %call4 = tail call i32 @mlx5e_rep_tc_event_port_affinity(ptr noundef %add.ptr) #18
  br label %cleanup6

cleanup6:                                         ; preds = %if.then3, %sw.bb, %if.then.cleanup6_crit_edge, %entry.cleanup6_crit_edge
  %retval.1 = phi i32 [ %call4, %if.then3 ], [ 1, %sw.bb ], [ 0, %if.then.cleanup6_crit_edge ], [ 0, %entry.cleanup6_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_notifier_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_dcbnl_initialize(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_dcbnl_init_app(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_rep_neigh_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_rep_bridge_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_open(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_attach(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_rep_tc_event_port_affinity(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_close(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_detach(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_rep_bridge_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_rep_neigh_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_dcbnl_delete_app(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_notifier_unregister(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_rep_tc_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_lag_remove_netdev(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_vxlan_reset_to_default(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5e_create_netdev(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_attach_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_detach_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_destroy_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx5e_rep_enable(ptr noundef %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %ppriv = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 43
  %0 = ptrtoint ptr %ppriv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ppriv, align 32
  tail call void @mlx5e_set_netdev_mtu_boundaries(ptr noundef %priv) #18
  %call = tail call i32 @mlx5e_rep_neigh_init(ptr noundef %1) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx5e_rep_disable(ptr nocapture noundef readonly %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %ppriv = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 43
  %0 = ptrtoint ptr %ppriv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ppriv, align 32
  tail call void @mlx5e_rep_neigh_cleanup(ptr noundef %1) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5e_rep_max_nch_limit(ptr noundef %mdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %caps = getelementptr inbounds %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 8
  %0 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %caps, align 8
  %add.ptr = getelementptr i32, ptr %1, i32 27
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr, align 4
  %shr = lshr i32 %3, 8
  %and = and i32 %shr, 31
  %shl = shl nuw i32 1, %and
  %call = tail call zeroext i16 @mlx5_eswitch_get_total_vports(ptr noundef %mdev) #18
  %conv = zext i16 %call to i32
  %div = sdiv i32 %shl, %conv
  ret i32 %div
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mlx5e_rep_stats_grps_num(ptr nocapture noundef readnone %priv) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_set_netdev_mtu_boundaries(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @mlx5_eswitch_get_total_vports(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mlx5e_stats_grp_sw_rep_num_stats(ptr nocapture noundef readnone %priv) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 4
}

; Function Attrs: argmemonly nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5e_stats_grp_sw_rep_fill_strings(ptr nocapture noundef readnone %priv, ptr noundef %data, i32 noundef %idx) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %idx, 5
  %add.ptr = getelementptr i8, ptr %data, i32 %mul
  %call = tail call ptr @strcpy(ptr noundef %add.ptr, ptr noundef nonnull @sw_rep_stats_desc) #22
  %inc = shl i32 %idx, 5
  %mul.1 = add i32 %inc, 32
  %add.ptr.1 = getelementptr i8, ptr %data, i32 %mul.1
  %call.1 = tail call ptr @strcpy(ptr noundef %add.ptr.1, ptr noundef getelementptr inbounds ([4 x %struct.counter_desc], ptr @sw_rep_stats_desc, i32 0, i32 1)) #22
  %inc.1 = shl i32 %idx, 5
  %mul.2 = add i32 %inc.1, 64
  %add.ptr.2 = getelementptr i8, ptr %data, i32 %mul.2
  %call.2 = tail call ptr @strcpy(ptr noundef %add.ptr.2, ptr noundef getelementptr inbounds ([4 x %struct.counter_desc], ptr @sw_rep_stats_desc, i32 0, i32 2)) #22
  %inc.3 = add i32 %idx, 4
  %inc.2 = shl i32 %idx, 5
  %mul.3 = add i32 %inc.2, 96
  %add.ptr.3 = getelementptr i8, ptr %data, i32 %mul.3
  %call.3 = tail call ptr @strcpy(ptr noundef %add.ptr.3, ptr noundef getelementptr inbounds ([4 x %struct.counter_desc], ptr @sw_rep_stats_desc, i32 0, i32 3)) #22
  ret i32 %inc.3
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5e_stats_grp_sw_rep_fill_stats(ptr nocapture noundef readonly %priv, ptr nocapture noundef writeonly %data, i32 noundef %idx) #15 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %stats = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 24
  %0 = ptrtoint ptr %stats to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %stats, align 8
  %inc = add i32 %idx, 1
  %arrayidx1 = getelementptr i64, ptr %data, i32 %idx
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %1, ptr %arrayidx1, align 8
  %add.ptr.1 = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 0, i32 1
  %3 = ptrtoint ptr %add.ptr.1 to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %add.ptr.1, align 8
  %inc.1 = add i32 %idx, 2
  %arrayidx1.1 = getelementptr i64, ptr %data, i32 %inc
  %5 = ptrtoint ptr %arrayidx1.1 to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %4, ptr %arrayidx1.1, align 8
  %add.ptr.2 = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 0, i32 2
  %6 = ptrtoint ptr %add.ptr.2 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %add.ptr.2, align 8
  %inc.2 = add i32 %idx, 3
  %arrayidx1.2 = getelementptr i64, ptr %data, i32 %inc.1
  %8 = ptrtoint ptr %arrayidx1.2 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %7, ptr %arrayidx1.2, align 8
  %add.ptr.3 = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 0, i32 3
  %9 = ptrtoint ptr %add.ptr.3 to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %add.ptr.3, align 8
  %inc.3 = add i32 %idx, 4
  %arrayidx1.3 = getelementptr i64, ptr %data, i32 %inc.2
  %11 = ptrtoint ptr %arrayidx1.3 to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %10, ptr %arrayidx1.3, align 8
  ret i32 %inc.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx5e_stats_grp_sw_rep_update_stats(ptr noundef %priv) #0 align 64 {
entry:
  %stats64 = alloca %struct.rtnl_link_stats64, align 8
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %stats = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 24
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %stats64) #18
  %0 = call ptr @memset(ptr %stats64, i32 0, i32 192)
  %1 = call ptr @memset(ptr %stats, i32 0, i32 952)
  call void @mlx5e_fold_sw_stats64(ptr noundef %priv, ptr noundef nonnull %stats64) #18
  %2 = ptrtoint ptr %stats64 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %stats64, align 8
  %4 = ptrtoint ptr %stats to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %3, ptr %stats, align 8
  %rx_bytes = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats64, i32 0, i32 2
  %5 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %rx_bytes, align 8
  %rx_bytes2 = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 0, i32 1
  %7 = ptrtoint ptr %rx_bytes2 to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %6, ptr %rx_bytes2, align 8
  %tx_packets = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats64, i32 0, i32 1
  %8 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %tx_packets, align 8
  %tx_packets3 = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 0, i32 2
  %10 = ptrtoint ptr %tx_packets3 to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %9, ptr %tx_packets3, align 8
  %tx_bytes = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats64, i32 0, i32 3
  %11 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %tx_bytes, align 8
  %tx_bytes4 = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 0, i32 3
  %13 = ptrtoint ptr %tx_bytes4 to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %12, ptr %tx_bytes4, align 8
  %tx_dropped = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats64, i32 0, i32 7
  %14 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %tx_dropped, align 8
  %tx_queue_dropped = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 0, i32 41
  %16 = ptrtoint ptr %tx_queue_dropped to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %15, ptr %tx_queue_dropped, align 8
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %stats64) #18
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mlx5e_stats_grp_vport_rep_num_stats(ptr nocapture noundef readnone %priv) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 4
}

; Function Attrs: argmemonly nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5e_stats_grp_vport_rep_fill_strings(ptr nocapture noundef readnone %priv, ptr noundef %data, i32 noundef %idx) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %idx, 5
  %add.ptr = getelementptr i8, ptr %data, i32 %mul
  %call = tail call ptr @strcpy(ptr noundef %add.ptr, ptr noundef nonnull @vport_rep_stats_desc) #22
  %inc = shl i32 %idx, 5
  %mul.1 = add i32 %inc, 32
  %add.ptr.1 = getelementptr i8, ptr %data, i32 %mul.1
  %call.1 = tail call ptr @strcpy(ptr noundef %add.ptr.1, ptr noundef getelementptr inbounds ([4 x %struct.counter_desc], ptr @vport_rep_stats_desc, i32 0, i32 1)) #22
  %inc.1 = shl i32 %idx, 5
  %mul.2 = add i32 %inc.1, 64
  %add.ptr.2 = getelementptr i8, ptr %data, i32 %mul.2
  %call.2 = tail call ptr @strcpy(ptr noundef %add.ptr.2, ptr noundef getelementptr inbounds ([4 x %struct.counter_desc], ptr @vport_rep_stats_desc, i32 0, i32 2)) #22
  %inc.3 = add i32 %idx, 4
  %inc.2 = shl i32 %idx, 5
  %mul.3 = add i32 %inc.2, 96
  %add.ptr.3 = getelementptr i8, ptr %data, i32 %mul.3
  %call.3 = tail call ptr @strcpy(ptr noundef %add.ptr.3, ptr noundef getelementptr inbounds ([4 x %struct.counter_desc], ptr @vport_rep_stats_desc, i32 0, i32 3)) #22
  ret i32 %inc.3
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5e_stats_grp_vport_rep_fill_stats(ptr nocapture noundef readonly %priv, ptr nocapture noundef writeonly %data, i32 noundef %idx) #15 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %vf_vport = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 5
  %0 = ptrtoint ptr %vf_vport to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %vf_vport, align 8
  %inc = add i32 %idx, 1
  %arrayidx1 = getelementptr i64, ptr %data, i32 %idx
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %1, ptr %arrayidx1, align 8
  %add.ptr.1 = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 5, i32 2
  %3 = ptrtoint ptr %add.ptr.1 to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %add.ptr.1, align 8
  %inc.1 = add i32 %idx, 2
  %arrayidx1.1 = getelementptr i64, ptr %data, i32 %inc
  %5 = ptrtoint ptr %arrayidx1.1 to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %4, ptr %arrayidx1.1, align 8
  %add.ptr.2 = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 5, i32 1
  %6 = ptrtoint ptr %add.ptr.2 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %add.ptr.2, align 8
  %inc.2 = add i32 %idx, 3
  %arrayidx1.2 = getelementptr i64, ptr %data, i32 %inc.1
  %8 = ptrtoint ptr %arrayidx1.2 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %7, ptr %arrayidx1.2, align 8
  %add.ptr.3 = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 5, i32 3
  %9 = ptrtoint ptr %add.ptr.3 to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %add.ptr.3, align 8
  %inc.3 = add i32 %idx, 4
  %arrayidx1.3 = getelementptr i64, ptr %data, i32 %inc.2
  %11 = ptrtoint ptr %arrayidx1.3 to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %10, ptr %arrayidx1.3, align 8
  ret i32 %inc.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx5e_stats_grp_vport_rep_update_stats(ptr nocapture noundef %priv) #0 align 64 {
entry:
  %vf_stats = alloca %struct.ifla_vf_stats, align 8
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %mdev = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %0 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev, align 64
  %eswitch = getelementptr inbounds %struct.mlx5_core_dev, ptr %1, i32 0, i32 17, i32 28
  %2 = ptrtoint ptr %eswitch to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %eswitch, align 4
  %ppriv = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 43
  %4 = ptrtoint ptr %ppriv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ppriv, align 32
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %vf_stats) #18
  %8 = call ptr @memset(ptr %vf_stats, i32 255, i32 64)
  %vport = getelementptr inbounds %struct.mlx5_eswitch_rep, ptr %7, i32 0, i32 1
  %9 = ptrtoint ptr %vport to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %vport, align 4
  %call = call i32 @mlx5_eswitch_get_vport_stats(ptr noundef %3, i16 noundef zeroext %10, ptr noundef nonnull %vf_stats) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %netdev = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 22
  %11 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %netdev, align 4
  %13 = ptrtoint ptr %vport to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %vport, align 4
  %conv = zext i16 %14 to i32
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %12, ptr noundef nonnull @.str.34, i32 noundef %conv, i32 noundef %call) #25
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %vf_vport = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 5
  %tx_packets = getelementptr inbounds %struct.ifla_vf_stats, ptr %vf_stats, i32 0, i32 1
  %15 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %tx_packets, align 8
  %17 = ptrtoint ptr %vf_vport to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %16, ptr %vf_vport, align 8
  %tx_bytes = getelementptr inbounds %struct.ifla_vf_stats, ptr %vf_stats, i32 0, i32 3
  %18 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %tx_bytes, align 8
  %rx_bytes = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 5, i32 2
  %20 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %19, ptr %rx_bytes, align 8
  %21 = ptrtoint ptr %vf_stats to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %vf_stats, align 8
  %tx_packets5 = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 5, i32 1
  %23 = ptrtoint ptr %tx_packets5 to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %22, ptr %tx_packets5, align 8
  %rx_bytes6 = getelementptr inbounds %struct.ifla_vf_stats, ptr %vf_stats, i32 0, i32 2
  %24 = ptrtoint ptr %rx_bytes6 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %rx_bytes6, align 8
  %tx_bytes7 = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 5, i32 3
  %26 = ptrtoint ptr %tx_bytes7 to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %25, ptr %tx_bytes7, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %vf_stats) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_eswitch_get_vport_stats(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx5e_rep_get_drvinfo(ptr nocapture noundef readonly %dev, ptr noundef %drvinfo) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %mdev1 = getelementptr i8, ptr %dev, i32 11328
  %0 = ptrtoint ptr %mdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev1, align 64
  %driver = getelementptr inbounds %struct.ethtool_drvinfo, ptr %drvinfo, i32 0, i32 1
  %call2 = tail call i32 @strlcpy(ptr noundef %driver, ptr noundef nonnull @mlx5e_rep_driver_name, i32 noundef 32) #18
  %fw_version = getelementptr inbounds %struct.ethtool_drvinfo, ptr %drvinfo, i32 0, i32 3
  %iseg.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %iseg.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iseg.i, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #18, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !118
  %conv = and i32 %4, 65535
  %5 = ptrtoint ptr %iseg.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %iseg.i, align 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #18, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !119
  %shr.i = lshr i32 %7, 16
  %8 = ptrtoint ptr %iseg.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %iseg.i, align 4
  %cmdif_rev_fw_sub.i = getelementptr inbounds %struct.mlx5_init_seg, ptr %9, i32 0, i32 1
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %cmdif_rev_fw_sub.i) #18, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !120
  %conv8 = and i32 %10, 65535
  %board_id = getelementptr inbounds %struct.mlx5_core_dev, ptr %1, i32 0, i32 6
  %call10 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %fw_version, i32 noundef 32, ptr noundef nonnull @.str.35, i32 noundef %conv, i32 noundef %shr.i, i32 noundef %conv8, ptr noundef %board_id)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_link(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5e_rep_get_coalesce(ptr noundef %netdev, ptr noundef %coal, ptr noundef %kernel_coal, ptr nocapture noundef readnone %extack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %call1 = tail call i32 @mlx5e_ethtool_get_coalesce(ptr noundef %add.ptr.i, ptr noundef %coal, ptr noundef %kernel_coal) #18
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5e_rep_set_coalesce(ptr noundef %netdev, ptr noundef %coal, ptr noundef %kernel_coal, ptr noundef %extack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %call1 = tail call i32 @mlx5e_ethtool_set_coalesce(ptr noundef %add.ptr.i, ptr noundef %coal, ptr noundef %kernel_coal, ptr noundef %extack) #18
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx5e_rep_get_ringparam(ptr noundef %dev, ptr noundef %param, ptr nocapture noundef readnone %kernel_param, ptr nocapture noundef readnone %extack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  tail call void @mlx5e_ethtool_get_ringparam(ptr noundef %add.ptr.i, ptr noundef %param) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5e_rep_set_ringparam(ptr noundef %dev, ptr noundef %param, ptr nocapture noundef readnone %kernel_param, ptr nocapture noundef readnone %extack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %call1 = tail call i32 @mlx5e_ethtool_set_ringparam(ptr noundef %add.ptr.i, ptr noundef %param) #18
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx5e_rep_get_strings(ptr noundef %dev, i32 noundef %stringset, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %stringset)
  %cond = icmp eq i32 %stringset, 1
  br i1 %cond, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  tail call void @mlx5e_stats_fill_strings(ptr noundef %add.ptr.i, ptr noundef %data) #18
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx5e_rep_get_ethtool_stats(ptr noundef %dev, ptr noundef %stats, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  tail call void @mlx5e_ethtool_get_ethtool_stats(ptr noundef %add.ptr.i, ptr noundef %stats, ptr noundef %data) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5e_rep_get_sset_count(ptr noundef %dev, i32 noundef %sset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sset)
  %cond = icmp eq i32 %sset, 1
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %call1 = tail call i32 @mlx5e_stats_total_num(ptr noundef %add.ptr.i) #18
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %sw.bb ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5e_rep_get_rxfh_key_size(ptr noundef %netdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %call1 = tail call i32 @mlx5e_ethtool_get_rxfh_key_size(ptr noundef %add.ptr.i) #18
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5e_rep_get_rxfh_indir_size(ptr noundef %netdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %call1 = tail call i32 @mlx5e_ethtool_get_rxfh_indir_size(ptr noundef %add.ptr.i) #18
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx5e_rep_get_channels(ptr noundef %dev, ptr noundef %ch) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  tail call void @mlx5e_ethtool_get_channels(ptr noundef %add.ptr.i, ptr noundef %ch) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5e_rep_set_channels(ptr noundef %dev, ptr noundef %ch) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %call1 = tail call i32 @mlx5e_ethtool_set_channels(ptr noundef %add.ptr.i, ptr noundef %ch) #18
  ret i32 %call1
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #16

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #17

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_ethtool_get_coalesce(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_ethtool_set_coalesce(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_ethtool_get_ringparam(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_ethtool_set_ringparam(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_stats_fill_strings(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_ethtool_get_ethtool_stats(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_stats_total_num(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_ethtool_get_rxfh_key_size(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_ethtool_get_rxfh_indir_size(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_ethtool_get_channels(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_ethtool_set_channels(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devlink_port_type_clear(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_netdev_attach_nic_profile(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_eswitch_unregister_vport_reps(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #18

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

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

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #19 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 59)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #19 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 59)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind readonly }
attributes #10 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { argmemonly nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #16 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #17 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #18 = { nounwind }
attributes #19 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #20 = { nomerge }
attributes #21 = { nobuiltin nounwind }
attributes #22 = { nobuiltin }
attributes #23 = { nounwind allocsize(0) }
attributes #24 = { nounwind allocsize(2) }
attributes #25 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !12, !13, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !32, !34, !36, !38, !40, !42, !43, !44, !45, !46, !47, !48, !50, !51, !52, !53, !55, !57, !59, !60, !61, !62, !63, !65, !66, !67, !68, !70, !72, !73, !74, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101}
!llvm.named.register.sp = !{!103}
!llvm.module.flags = !{!104, !105, !106, !107, !108, !109, !110, !111}
!llvm.ident = !{!112}

!0 = !{ptr @__tracepoint_mlx5e_rep_neigh_update, !1, !"__tracepoint_mlx5e_rep_neigh_update", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/./diag/en_rep_tracepoint.h", i32 14, i32 1}
!2 = !{ptr @__tracepoint_ptr_mlx5e_rep_neigh_update, !1, !"__tracepoint_ptr_mlx5e_rep_neigh_update", i1 false, i1 false}
!3 = !{ptr @__SCK__tp_func_mlx5e_rep_neigh_update, !1, !"__SCK__tp_func_mlx5e_rep_neigh_update", i1 false, i1 false}
!4 = !{ptr @event_class_mlx5e_rep_neigh_update, !1, !"event_class_mlx5e_rep_neigh_update", i1 false, i1 false}
!5 = !{ptr @event_mlx5e_rep_neigh_update, !1, !"event_mlx5e_rep_neigh_update", i1 false, i1 false}
!6 = !{ptr @__event_mlx5e_rep_neigh_update, !1, !"__event_mlx5e_rep_neigh_update", i1 false, i1 false}
!7 = !{ptr @__bpf_trace_tp_map_mlx5e_rep_neigh_update, !1, !"__bpf_trace_tp_map_mlx5e_rep_neigh_update", i1 false, i1 false}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_rep.c", i32 425, i32 29}
!10 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_rep.c", i32 1410, i32 9}
!12 = !{ptr @__tpstrtab_mlx5e_rep_neigh_update, !1, !"__tpstrtab_mlx5e_rep_neigh_update", i1 false, i1 false}
!13 = !{ptr @str__mlx5__trace_system_name, !14, !"str__mlx5__trace_system_name", i1 false, i1 false}
!14 = !{!"../include/trace/trace_events.h", i32 36, i32 1}
!15 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.5, !1, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.6, !1, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.7, !1, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.8, !1, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.9, !1, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.10, !1, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.11, !1, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.12, !1, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @trace_event_fields_mlx5e_rep_neigh_update, !1, !"trace_event_fields_mlx5e_rep_neigh_update", i1 false, i1 false}
!27 = !{ptr @trace_event_type_funcs_mlx5e_rep_neigh_update, !1, !"trace_event_type_funcs_mlx5e_rep_neigh_update", i1 false, i1 false}
!28 = !{ptr @.str.13, !1, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @print_fmt_mlx5e_rep_neigh_update, !1, !"print_fmt_mlx5e_rep_neigh_update", i1 false, i1 false}
!30 = !{ptr @mlx5e_netdev_ops_rep, !31, !"mlx5e_netdev_ops_rep", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_rep.c", i32 571, i32 36}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_rep.c", i32 1402, i32 10}
!34 = !{ptr @mlx5e_rep_driver, !35, !"mlx5e_rep_driver", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_rep.c", i32 1401, i32 32}
!36 = !{ptr @rep_ops, !37, !"rep_ops", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_rep.c", i32 1365, i32 42}
!38 = !{ptr @mlx5e_uplink_rep_profile, !39, !"mlx5e_uplink_rep_profile", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_rep.c", i32 1128, i32 35}
!40 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_rep.c", i32 687, i32 3}
!42 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @mlx5e_init_ul_rep._entry, !41, !"_entry", i1 false, i1 false}
!47 = !{ptr @mlx5e_init_ul_rep._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_rep.c", i32 820, i32 3}
!50 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @mlx5e_init_rep_rx._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @mlx5e_init_rep_rx._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.22, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_rep.c", i32 718, i32 28}
!55 = !{ptr @.str.23, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_rep.c", i32 744, i32 28}
!57 = !{ptr @.str.24, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_rep.c", i32 934, i32 3}
!59 = !{ptr @.str.25, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.26, !58, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @mlx5e_init_rep_tx._entry, !58, !"_entry", i1 false, i1 false}
!62 = !{ptr @mlx5e_init_rep_tx._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.27, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_rep.c", i32 914, i32 3}
!65 = !{ptr @.str.28, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @mlx5e_init_uplink_rep_tx._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @mlx5e_init_uplink_rep_tx._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @mlx5e_ul_rep_stats_grps, !69, !"mlx5e_ul_rep_stats_grps", i1 false, i1 false}
!69 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_rep.c", i32 1083, i32 26}
!70 = !{ptr @.str.29, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_rep.c", i32 1201, i32 3}
!72 = !{ptr @.str.30, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @mlx5e_vport_vf_rep_load._entry, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @mlx5e_vport_vf_rep_load._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!75 = distinct !{null, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_rep.c", i32 1215, i32 23}
!77 = !{ptr @.str.32, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_rep.c", i32 1222, i32 8}
!79 = !{ptr @.str.33, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_rep.c", i32 1230, i32 8}
!81 = !{ptr @mlx5e_rep_profile, !82, !"mlx5e_rep_profile", i1 false, i1 false}
!82 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_rep.c", i32 1109, i32 35}
!83 = !{ptr @mlx5e_rep_stats_grps, !84, !"mlx5e_rep_stats_grps", i1 false, i1 false}
!84 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_rep.c", i32 1072, i32 26}
!85 = !{ptr @mlx5e_stats_grp_sw_rep, !86, !"mlx5e_stats_grp_sw_rep", i1 false, i1 false}
!86 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_rep.c", i32 1068, i32 8}
!87 = !{ptr @sw_rep_stats_desc, !88, !"sw_rep_stats_desc", i1 false, i1 false}
!88 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_rep.c", i32 79, i32 34}
!89 = !{ptr @mlx5e_stats_grp_vport_rep, !90, !"mlx5e_stats_grp_vport_rep", i1 false, i1 false}
!90 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_rep.c", i32 1069, i32 8}
!91 = !{ptr @vport_rep_stats_desc, !92, !"vport_rep_stats_desc", i1 false, i1 false}
!92 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_rep.c", i32 93, i32 34}
!93 = !{ptr @.str.34, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_rep.c", i32 178, i32 29}
!95 = !{ptr @mlx5e_rep_ethtool_ops, !96, !"mlx5e_rep_ethtool_ops", i1 false, i1 false}
!96 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_rep.c", i32 295, i32 33}
!97 = !{ptr @.str.35, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_rep.c", i32 74, i32 4}
!99 = !{ptr @mlx5e_rep_driver_name, !100, !"mlx5e_rep_driver_name", i1 false, i1 false}
!100 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_rep.c", i32 63, i32 19}
!101 = !{ptr @mlx5e_rep_id_table, !102, !"mlx5e_rep_id_table", i1 false, i1 false}
!102 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_rep.c", i32 1394, i32 41}
!103 = !{!"sp"}
!104 = !{i32 1, !"wchar_size", i32 2}
!105 = !{i32 1, !"min_enum_size", i32 4}
!106 = !{i32 8, !"branch-target-enforcement", i32 0}
!107 = !{i32 8, !"sign-return-address", i32 0}
!108 = !{i32 8, !"sign-return-address-all", i32 0}
!109 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!110 = !{i32 7, !"uwtable", i32 1}
!111 = !{i32 7, !"frame-pointer", i32 2}
!112 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!113 = !{!"branch_weights", i32 2000, i32 1}
!114 = !{!"branch_weights", i32 1, i32 2000}
!115 = !{!"auto-init"}
!116 = !{i8 0, i8 2}
!117 = !{i64 5057547}
!118 = !{i64 2158616384}
!119 = !{i64 2158616855}
!120 = !{i64 2158617346}
