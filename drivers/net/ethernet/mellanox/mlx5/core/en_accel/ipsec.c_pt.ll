; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlx5/core/en_accel/ipsec.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlx5/core/en_accel/ipsec.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.xfrmdev_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.mlx5e_ipsec = type { ptr, [1024 x %struct.hlist_head], i8, %struct.spinlock, %struct.ida, %struct.mlx5e_ipsec_sw_stats, %struct.mlx5e_ipsec_stats, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.mlx5e_ipsec_sw_stats = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.mlx5e_ipsec_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.mlx5e_ipsec_sa_entry = type { %struct.hlist_node, %struct.mlx5e_ipsec_esn_state, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.mlx5e_ipsec_rule }
%struct.mlx5e_ipsec_esn_state = type { i32, i8 }
%struct.mlx5e_ipsec_rule = type { ptr, ptr }
%struct.xfrm_state = type { %struct.possible_net_t, %union.anon.121, %struct.hlist_node, %struct.hlist_node, %struct.hlist_node, %struct.refcount_struct, %struct.spinlock, %struct.xfrm_id, %struct.xfrm_selector, %struct.xfrm_mark, i32, i32, i32, %struct.xfrm_state_walk, %struct.anon.122, %struct.xfrm_lifetime_cfg, ptr, ptr, ptr, ptr, ptr, i16, i32, i32, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.xfrm_replay_state, ptr, %struct.xfrm_replay_state, ptr, i32, i32, i32, i32, %struct.timer_list, %struct.xfrm_stats, %struct.xfrm_lifetime_cur, %struct.hrtimer, %struct.xfrm_state_offload, i32, i64, %struct.page_frag, ptr, %struct.xfrm_mode, %struct.xfrm_mode, %struct.xfrm_mode, ptr, ptr, ptr }
%struct.possible_net_t = type { ptr }
%union.anon.121 = type { %struct.hlist_node }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.xfrm_id = type { %union.xfrm_address_t, i32, i8 }
%union.xfrm_address_t = type { [4 x i32] }
%struct.xfrm_selector = type { %union.xfrm_address_t, %union.xfrm_address_t, i16, i16, i16, i16, i16, i8, i8, i8, i32, i32 }
%struct.xfrm_mark = type { i32, i32 }
%struct.xfrm_state_walk = type { %struct.list_head, i8, i8, i8, i32, ptr }
%struct.list_head = type { ptr, ptr }
%struct.anon.122 = type { i32, i8, i8, i8, i8, i8, i8, i16, %union.xfrm_address_t, i32, i32, i32, %struct.xfrm_mark }
%struct.xfrm_lifetime_cfg = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.xfrm_replay_state = type { i32, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.xfrm_stats = type { i32, i32, i32 }
%struct.xfrm_lifetime_cur = type { i64, i64, i64, i64 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.xfrm_state_offload = type { ptr, ptr, ptr, i32, i32, i8 }
%struct.page_frag = type { ptr, i16, i16 }
%struct.xfrm_mode = type { i8, i8, i8 }
%struct.mlx5e_priv = type { ptr, ptr, [8 x i32], %struct.mlx5e_dcbx_dp, i32, i32, %struct.mutex, [48 x i8], %struct.mlx5e_rq, %struct.mlx5e_channels, [2 x [8 x i32]], ptr, ptr, %struct.mlx5e_flow_steering, ptr, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.mlx5_nb, ptr, ptr, ptr, %struct.mlx5e_stats, ptr, [12 x i8], %struct.mlx5e_channel_stats, %struct.mlx5e_ptp_stats, i16, i16, i8, i8, i8, %struct.hwtstamp_config, i16, i16, %struct.notifier_block, %struct.notifier_block, i32, %struct.udp_tunnel_nic_info, %struct.mlx5e_dcbx, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mlx5e_xsk, %struct.mlx5e_scratchpad, %struct.mlx5e_htb, ptr, [16 x i8] }
%struct.mlx5e_dcbx_dp = type { [64 x i8], i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mlx5e_rq = type { %union.anon.189, %struct.anon.203, ptr, ptr, ptr, [48 x i8], %struct.mlx5e_cq, %struct.mlx5e_cq_decomp, %struct.mlx5e_page_cache, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.dim, ptr, ptr, [1 x i32], ptr, ptr, %struct.work_struct, %struct.mlx5_wq_ctrl, i32, i8, i32, ptr, i32, %struct.mlx5e_dma_info, [72 x i8], %struct.xdp_rxq_info, ptr, [124 x i8] }
%union.anon.189 = type { %struct.anon.196 }
%struct.anon.196 = type { %struct.mlx5_wq_ll, %struct.mlx5e_umr_wqe, ptr, ptr, i16, i16, i8, i8, i8, i8, ptr }
%struct.mlx5_wq_ll = type { %struct.mlx5_frag_buf_ctrl, ptr, ptr, i16, i16, i16 }
%struct.mlx5_frag_buf_ctrl = type { ptr, i32, i16, i16, i8, i8, i8 }
%struct.mlx5e_umr_wqe = type { %struct.mlx5_wqe_ctrl_seg, %struct.mlx5_wqe_umr_ctrl_seg, %struct.mlx5_mkey_seg, %union.anon.198 }
%struct.mlx5_wqe_ctrl_seg = type { i32, i32, i8, [2 x i8], i8, %union.anon.164 }
%union.anon.164 = type { i32 }
%struct.mlx5_wqe_umr_ctrl_seg = type { i8, [3 x i8], i16, %union.anon.197, i64, i32, [28 x i8] }
%union.anon.197 = type { i16 }
%struct.mlx5_mkey_seg = type { i8, i8, i8, i8, i32, [4 x i8], i32, i64, i64, i32, [16 x i8], i32, [3 x i8], i8, [4 x i8] }
%union.anon.198 = type { %struct.anon.199 }
%struct.anon.199 = type { %struct.anon.200, [0 x %struct.mlx5_mtt] }
%struct.anon.200 = type {}
%struct.mlx5_mtt = type { i64 }
%struct.anon.203 = type { i16, i32, i8 }
%struct.mlx5e_cq = type { %struct.mlx5_cqwq, i16, ptr, %struct.mlx5_core_cq, ptr, ptr, ptr, ptr, %struct.mlx5_wq_ctrl, [24 x i8] }
%struct.mlx5_cqwq = type { %struct.mlx5_frag_buf_ctrl, ptr, i32 }
%struct.mlx5_core_cq = type { i32, i32, ptr, ptr, ptr, %struct.refcount_struct, %struct.completion, i32, i32, ptr, ptr, i32, i32, ptr, i32, %struct.anon.186, i32, %struct.list_head, ptr, i16 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.anon.186 = type { %struct.list_head, ptr, ptr }
%struct.mlx5e_cq_decomp = type { %struct.mlx5_cqe64, [8 x %struct.mlx5_mini_cqe8], i8, i16, i16, [122 x i8] }
%struct.mlx5_cqe64 = type { i8, i8, i16, %union.anon.192, i32, i8, i8, [2 x i8], i16, i16, i32, i8, i8, i16, i32, %union.anon.195, [4 x i8], i32, i32, i32, i32, i16, i8, i8 }
%union.anon.192 = type { %struct.anon.193 }
%struct.anon.193 = type { i8, i8, i16, i32 }
%union.anon.195 = type { i32 }
%struct.mlx5_mini_cqe8 = type { %union.anon.204, i32 }
%union.anon.204 = type { i32 }
%struct.mlx5e_page_cache = type { i32, i32, [256 x %struct.mlx5e_dma_info] }
%struct.dim = type { i8, %struct.dim_stats, %struct.dim_sample, %struct.dim_sample, %struct.work_struct, ptr, i8, i8, i8, i8, i8, i8 }
%struct.dim_stats = type { i32, i32, i32, i32, i32 }
%struct.dim_sample = type { i64, i32, i32, i16, i32 }
%struct.mlx5_wq_ctrl = type { ptr, %struct.mlx5_frag_buf, %struct.mlx5_db }
%struct.mlx5_frag_buf = type { ptr, i32, i32, i8 }
%struct.mlx5_db = type { ptr, %union.anon.187, i32, i32 }
%union.anon.187 = type { ptr }
%struct.mlx5e_dma_info = type { i32, %union.anon.191 }
%union.anon.191 = type { ptr }
%struct.xdp_rxq_info = type { ptr, i32, i32, %struct.xdp_mem_info, i32, [104 x i8] }
%struct.xdp_mem_info = type { i32, i32 }
%struct.mlx5e_channels = type { ptr, ptr, i32, %struct.mlx5e_params }
%struct.mlx5e_params = type { i8, i8, i8, i16, %struct.anon.222, i8, i8, %struct.dim_cq_moder, %struct.dim_cq_moder, %struct.mlx5e_packet_merge_param, i8, i8, i8, i8, i8, i32, ptr, ptr, i32, i32, i8 }
%struct.anon.222 = type { i16, i8, [16 x %struct.netdev_tc_txq], %struct.anon.223 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.anon.223 = type { ptr }
%struct.dim_cq_moder = type { i16, i16, i16, i8 }
%struct.mlx5e_packet_merge_param = type { i32, i32, %struct.anon.224 }
%struct.anon.224 = type { i8, i8 }
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
%struct.mlx5_core_dev = type { ptr, i32, ptr, %struct.mutex, i32, i8, [64 x i8], %struct.mlx5_cmd, %struct.anon.169, ptr, i64, i32, ptr, i32, i32, %struct.mutex, i32, %struct.mlx5_priv, %struct.mlx5_profile, i32, %struct.mlx5e_resources, ptr, ptr, ptr, %struct.anon.171, ptr, ptr, %struct.mlx5_clock, ptr, ptr, ptr, i32, ptr }
%struct.mlx5_cmd = type { %struct.mlx5_nb, i32, ptr, i32, i32, ptr, i32, i16, i8, i8, i32, i32, ptr, %struct.spinlock, %struct.spinlock, i8, i32, [32 x i8], ptr, %struct.semaphore, %struct.semaphore, i32, i16, [32 x ptr], ptr, %struct.mlx5_cmd_debug, [5 x %struct.cmd_msg_cache], i32, ptr }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.mlx5_cmd_debug = type { ptr, ptr, ptr, i8, i16, i16 }
%struct.cmd_msg_cache = type { %struct.spinlock, %struct.list_head, i32, i32 }
%struct.anon.169 = type { [38 x ptr], [20 x i32], [3 x [18 x i32]], [64 x i32], [18 x i32], i8 }
%struct.mlx5_priv = type { ptr, ptr, %struct.mlx5_nb, ptr, %struct.xarray, i32, %struct.atomic_t, %struct.list_head, i32, i32, %struct.mlx5_core_health, %struct.list_head, ptr, ptr, ptr, ptr, %struct.mutex, i32, %struct.mutex, %struct.list_head, ptr, %struct.list_head, %struct.spinlock, ptr, i32, ptr, ptr, ptr, ptr, %struct.mlx5_core_sriov, ptr, i32, ptr, ptr, %struct.mlx5_core_roce, %struct.mlx5_fc_stats, %struct.mlx5_rl_table, ptr, %struct.mlx5_bfreg_data, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mlx5_core_health = type { ptr, ptr, %struct.timer_list, i32, i32, i8, i32, i32, %struct.spinlock, ptr, i32, %struct.work_struct, %struct.work_struct, ptr, ptr, %struct.delayed_work }
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
%struct.mlx5_profile = type { i64, i8, [23 x %struct.anon.170] }
%struct.anon.170 = type { i32, i32 }
%struct.mlx5e_resources = type { %struct.mlx5e_hw_objs, %struct.devlink_port, ptr }
%struct.mlx5e_hw_objs = type { i32, %struct.mlx5_td, i32, %struct.mlx5_sq_bfreg }
%struct.mlx5_td = type { %struct.mutex, %struct.list_head, i32 }
%struct.mlx5_sq_bfreg = type { ptr, ptr, i8, i32, i32 }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.148 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.148 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%struct.anon.171 = type { %struct.mlx5_rsvd_gids, i32 }
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
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.86, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.61 }
%struct.llist_node = type { ptr }
%union.anon.61 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.63 }
%union.anon.63 = type { %struct.anon.64 }
%struct.anon.64 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.rb_root = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.tlbflush_unmap_batch = type {}
%union.anon.86 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.139, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.159, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.139 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%union.anon.159 = type { ptr }
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
%struct.mlx5_accel_esp_xfrm_attrs = type { i32, i32, i32, i32, i32, i32, i32, i32, %union.anon.172, i32, %union.anon.174, %union.anon.175, %union.anon.176, i8 }
%union.anon.172 = type { %struct.anon.173 }
%struct.anon.173 = type { i32 }
%union.anon.174 = type { %struct.aes_gcm_keymat }
%struct.aes_gcm_keymat = type { i64, i32, i32, i32, i32, [8 x i32] }
%union.anon.175 = type { [4 x i32] }
%union.anon.176 = type { [4 x i32] }
%struct.xfrm_algo_aead = type { [64 x i8], i32, i32, [0 x i8] }
%struct.xfrm_replay_state_esn = type { i32, i32, i32, i32, i32, i32, [0 x i32] }
%struct.crypto_aead = type { i32, i32, [120 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%struct.mlx5_accel_esp_xfrm = type { ptr, %struct.mlx5_accel_esp_xfrm_attrs }
%struct.sk_buff = type { %union.anon.21, %union.anon.24, %union.anon.25, [48 x i8], %union.anon.26, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.28, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.21 = type { %struct.anon.22 }
%struct.anon.22 = type { ptr, ptr, %union.anon.23 }
%union.anon.23 = type { ptr }
%union.anon.24 = type { ptr }
%union.anon.25 = type { i64 }
%union.anon.26 = type { %struct.anon.27 }
%struct.anon.27 = type { i32, ptr }
%union.anon.28 = type { %struct.anon.29 }
%struct.anon.29 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.30, i32, i32, i32, i16, i16, %union.anon.32, i32, %union.anon.33, %union.anon.34, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.30 = type { i32 }
%union.anon.32 = type { i32 }
%union.anon.33 = type { i32 }
%union.anon.34 = type { i16 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.20 }
%union.anon.20 = type { [4 x i32] }
%struct.mlx5e_ipsec_modify_state_work = type { %struct.work_struct, %struct.mlx5_accel_esp_xfrm_attrs, ptr }

@mlx5e_ipsec_sadb_rx_lookup.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"drivers/net/ethernet/mellanox/mlx5/core/en_accel/ipsec.c\00", [39 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@mlx5e_ipsec_init.__UNIQUE_ID_ddebug652 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.3, ptr @.str, ptr @.str.4, i8 0, i8 104, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mlx5_core\00", [22 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mlx5e_ipsec_init\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Not an IPSec offload device\0A\00", [35 x i8] zeroinitializer }, align 32
@mlx5e_ipsec_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&ipsec->sadb_rx_lock\00", [43 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mlx5e_ipsec: %s\00", [16 x i8] zeroinitializer }, align 32
@mlx5e_ipsec_init.__UNIQUE_ID_ddebug653 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.3, ptr @.str, ptr @.str.7, i8 0, i8 110, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"IPSec attached to netdevice\0A\00", [35 x i8] zeroinitializer }, align 32
@mlx5e_ipsec_build_netdev.__UNIQUE_ID_ddebug654 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.8, ptr @.str, ptr @.str.9, i8 0, i8 -122, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mlx5e_ipsec_build_netdev\00", [39 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"%s:%d:(pid %d): mlx5e: ESP and SWP offload not supported\0A\00", [38 x i8] zeroinitializer }, align 32
@mlx5e_ipsec_build_netdev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.8, ptr @.str, i32 541, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"mlx5e: IPSec ESP acceleration enabled\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mlx5e_ipsec_build_netdev._entry_ptr = internal global ptr @mlx5e_ipsec_build_netdev._entry, section ".printk_index", align 4
@mlx5e_ipsec_xfrmdev_ops = internal constant { %struct.xfrmdev_ops, [44 x i8] } { %struct.xfrmdev_ops { ptr @mlx5e_xfrm_add_state, ptr @mlx5e_xfrm_del_state, ptr @mlx5e_xfrm_free_state, ptr @mlx5e_ipsec_offload_ok, ptr @mlx5e_xfrm_advance_esn_state }, [44 x i8] zeroinitializer }, align 32
@mlx5e_ipsec_build_netdev.__UNIQUE_ID_ddebug655 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.8, ptr @.str, ptr @.str.13, i8 0, i8 -120, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%s:%d:(pid %d): mlx5e: SWP checksum not supported\0A\00", [45 x i8] zeroinitializer }, align 32
@mlx5e_ipsec_build_netdev.__UNIQUE_ID_ddebug656 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.8, ptr @.str, ptr @.str.14, i8 0, i8 -117, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s:%d:(pid %d): mlx5e: ESP LSO not supported\0A\00", [50 x i8] zeroinitializer }, align 32
@mlx5e_ipsec_build_netdev.__UNIQUE_ID_ddebug657 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.8, ptr @.str, ptr @.str.15, i8 0, i8 -116, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"%s:%d:(pid %d): mlx5e: ESP GSO capability turned on\0A\00", [43 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.16 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.18 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@xa_init_flags.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&xa->xa_lock\00", [19 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Cannot offload authenticated xfrm states\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Only AES-GCM-ICV16 xfrm state may be offloaded\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Cannot offload compressed xfrm states\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Cannot offload ESN xfrm states\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Only IPv4/6 xfrm states may be offloaded\0A\00", [54 x i8] zeroinitializer }, align 32
@mlx5e_xfrm_validate_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str, i32 242, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"Only transport and tunnel xfrm states may be offloaded\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"mlx5e_xfrm_validate_state\00", [38 x i8] zeroinitializer }, align 32
@mlx5e_xfrm_validate_state._entry_ptr = internal global ptr @mlx5e_xfrm_validate_state._entry, section ".printk_index", align 4
@.str.27 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Only ESP xfrm state may be offloaded\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Encapsulated xfrm state may not be offloaded\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Cannot offload xfrm states without aead\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"Cannot offload xfrm states with AEAD ICV length other than 128bit\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"Cannot offload xfrm states with AEAD key length other than 128/256 bit\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Cannot offload xfrm states with tfc padding\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Cannot offload xfrm states without geniv\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"seqiv\00", [26 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"Cannot offload xfrm states with geniv other than seqiv\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"IPv6 xfrm state offload is not supported by this device\0A\00", [39 x i8] zeroinitializer }, align 32
@mlx5e_ipsec_sadb_rx_add.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@mlx5e_xfrm_advance_esn_state.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.37 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"(work_completion)(&modify_work->work)\00", [58 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.38 = internal global [4 x i64] [i64 2, i64 32, i64 160, i64 288]
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 67, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 419, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 428, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 433, i32 14 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 442, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 537, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 541, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant [24 x i8] c"mlx5e_ipsec_xfrmdev_ops\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 522, i32 33 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 547, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 556, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 563, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 695, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 723, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant [26 x i8] c"../include/linux/xarray.h\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 378, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 218, i32 23 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 222, i32 23 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 226, i32 23 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 232, i32 23 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 237, i32 23 }
@___asan_gen_.126 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 242, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 246, i32 23 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 250, i32 23 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 254, i32 23 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 258, i32 23 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 263, i32 23 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 267, i32 23 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 271, i32 23 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 274, i32 23 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 275, i32 23 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 281, i32 23 }
@___asan_gen_.165 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.168 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.169 = private constant [60 x i8] c"../drivers/net/ethernet/mellanox/mlx5/core/en_accel/ipsec.c\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 518, i32 2 }
@llvm.compiler.used = appending global [46 x ptr] [ptr @mlx5e_ipsec_build_netdev._entry, ptr @mlx5e_ipsec_build_netdev._entry_ptr, ptr @mlx5e_xfrm_validate_state._entry, ptr @mlx5e_xfrm_validate_state._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @mlx5e_ipsec_init.__key, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @mlx5e_ipsec_xfrmdev_ops, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @xa_init_flags.__key, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @mlx5e_xfrm_advance_esn_state.__key, ptr @.str.37], section "llvm.metadata"
@0 = internal global [44 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_ipsec_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_ipsec_build_netdev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_ipsec_xfrmdev_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xa_init_flags.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_xfrm_validate_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_xfrm_advance_esn_state.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mlx5e_ipsec_sadb_rx_lookup(ptr noundef %ipsec, i32 noundef %handle) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !88) #11
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !98
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 696, ptr noundef nonnull @.str.17) #11
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call = tail call i32 @rcu_read_lock_any_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b40 = load i1, ptr @mlx5e_ipsec_sadb_rx_lookup.__warned, align 1
  br i1 %.b40, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @mlx5e_ipsec_sadb_rx_lookup.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 67, ptr noundef nonnull @.str.1) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %mul.i.i = mul i32 %handle, 1640531527
  %shr.i = lshr i32 %mul.i.i, 22
  %arrayidx = getelementptr %struct.mlx5e_ipsec, ptr %ipsec, i32 0, i32 1, i32 %shr.i
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %do.end
  %sa_entry.0.in = phi ptr [ %arrayidx, %do.end ], [ %sa_entry.0, %for.body.for.cond_crit_edge ]
  %4 = ptrtoint ptr %sa_entry.0.in to i32
  call void @__asan_load4_noabort(i32 %4)
  %sa_entry.0 = load volatile ptr, ptr %sa_entry.0.in, align 4
  %tobool13.not = icmp eq ptr %sa_entry.0, null
  br i1 %tobool13.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.cond
  %handle14 = getelementptr inbounds %struct.mlx5e_ipsec_sa_entry, ptr %sa_entry.0, i32 0, i32 2
  %5 = ptrtoint ptr %handle14 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %handle14, align 4
  %cmp = icmp eq i32 %6, %handle
  br i1 %cmp, label %if.then15, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond

if.then15:                                        ; preds = %for.body
  %x = getelementptr inbounds %struct.mlx5e_ipsec_sa_entry, ptr %sa_entry.0, i32 0, i32 3
  %7 = ptrtoint ptr %x to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %x, align 4
  %refcnt.i = getelementptr inbounds %struct.xfrm_state, ptr %8, i32 0, i32 5
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #11
  %9 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #11, !srcloc !99
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then15.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !100

if.then15.if.end15.sink.split.i.i.i.i_crit_edge:  ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then15
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %10 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %.not.i.i.i.i = icmp sgt i32 %10, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.for.end_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !101

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.for.end_crit_edge:                ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then15.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then15.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef %.sink.i.i.i.i) #11
  br label %for.end

for.end:                                          ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.for.end_crit_edge, %for.cond.for.end_crit_edge
  %ret.0 = phi ptr [ %8, %if.else.i.i.i.i.for.end_crit_edge ], [ %8, %if.end15.sink.split.i.i.i.i ], [ null, %for.cond.for.end_crit_edge ]
  %call.i42 = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i42, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i45

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true.i45:                                ; preds = %for.end
  %call1.i43 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i43)
  %tobool.not.i44 = icmp eq i32 %call1.i43, 0
  br i1 %tobool.not.i44, label %land.lhs.true.i45.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i47

land.lhs.true.i45.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i45
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true2.i47:                               ; preds = %land.lhs.true.i45
  %.b4.i46 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i46, label %land.lhs.true2.i47.rcu_read_unlock.exit_crit_edge, label %if.then.i48

land.lhs.true2.i47.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i47
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

if.then.i48:                                      ; preds = %land.lhs.true2.i47
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 724, ptr noundef nonnull @.str.18) #11
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i48, %land.lhs.true2.i47.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i45.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !102
  %11 = tail call i32 @llvm.read_register.i32(metadata !88) #11
  %and.i.i.i.i.i49 = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i.i.i49 to ptr
  %preempt_count.i.i.i.i50 = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %preempt_count.i.i.i.i50 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %preempt_count.i.i.i.i50, align 4
  %sub.i.i.i = add i32 %14, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i50, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  ret ptr %ret.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5e_ipsec_init(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mdev = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %0 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev, align 64
  %call = tail call i32 @mlx5_accel_ipsec_device_caps(ptr noundef %1) #11
  %and = and i32 %call, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body1, label %if.end9

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5e_ipsec_init.__UNIQUE_ID_ddebug652, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5e_ipsec_init, %if.then6)) #11
          to label %cleanup [label %if.then6], !srcloc !103

if.then6:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #13
  %netdev = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 22
  %2 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %netdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @mlx5e_ipsec_init.__UNIQUE_ID_ddebug652, ptr noundef %3, ptr noundef nonnull @.str.4) #11
  br label %cleanup

if.end9:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 4392) #14
  %tobool11.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool11.not, label %if.end9.cleanup_crit_edge, label %if.end13

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  %sadb_rx = getelementptr inbounds %struct.mlx5e_ipsec, ptr %call7.i.i, i32 0, i32 1
  %5 = call ptr @memset(ptr %sadb_rx, i32 0, i32 4096)
  %sadb_rx_lock = getelementptr inbounds %struct.mlx5e_ipsec, ptr %call7.i.i, i32 0, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %sadb_rx_lock, ptr noundef nonnull @.str.5, ptr noundef nonnull @mlx5e_ipsec_init.__key, i16 noundef signext 3) #11
  %halloc = getelementptr inbounds %struct.mlx5e_ipsec, ptr %call7.i.i, i32 0, i32 4
  tail call void @__raw_spin_lock_init(ptr noundef %halloc, ptr noundef nonnull @.str.19, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #11
  %xa_flags.i.i = getelementptr inbounds %struct.mlx5e_ipsec, ptr %call7.i.i, i32 0, i32 4, i32 0, i32 1
  %6 = ptrtoint ptr %xa_flags.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 67108869, ptr %xa_flags.i.i, align 8
  %xa_head.i.i = getelementptr inbounds %struct.mlx5e_ipsec, ptr %call7.i.i, i32 0, i32 4, i32 0, i32 2
  %7 = ptrtoint ptr %xa_head.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %xa_head.i.i, align 4
  %8 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %priv, ptr %call7.i.i, align 8
  %9 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mdev, align 64
  %call19 = tail call i32 @mlx5_accel_ipsec_device_caps(ptr noundef %10) #11
  %no_trailer = getelementptr inbounds %struct.mlx5e_ipsec, ptr %call7.i.i, i32 0, i32 2
  %11 = trunc i32 %call19 to i8
  %12 = lshr i8 %11, 5
  %13 = and i8 %12, 1
  %14 = ptrtoint ptr %no_trailer to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %no_trailer, align 4
  %netdev27 = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 22
  %15 = ptrtoint ptr %netdev27 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %netdev27, align 4
  %call29 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.6, i32 noundef 655362, i32 noundef 1, ptr noundef %16) #11
  %wq = getelementptr inbounds %struct.mlx5e_ipsec, ptr %call7.i.i, i32 0, i32 7
  %17 = ptrtoint ptr %wq to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call29, ptr %wq, align 8
  %tobool31.not = icmp eq ptr %call29, null
  br i1 %tobool31.not, label %if.then32, label %if.end33

if.then32:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup

if.end33:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  %ipsec34 = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 44
  %18 = ptrtoint ptr %ipsec34 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call7.i.i, ptr %ipsec34, align 4
  %call35 = tail call i32 @mlx5e_accel_ipsec_fs_init(ptr noundef %priv) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5e_ipsec_init.__UNIQUE_ID_ddebug653, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5e_ipsec_init, %if.then49)) #11
          to label %cleanup [label %if.then49], !srcloc !103

if.then49:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  %19 = ptrtoint ptr %netdev27 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %netdev27, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @mlx5e_ipsec_init.__UNIQUE_ID_ddebug653, ptr noundef %20, ptr noundef nonnull @.str.7) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then49, %if.end33, %if.then32, %if.end9.cleanup_crit_edge, %if.then6, %do.body1
  %retval.0 = phi i32 [ -12, %if.then32 ], [ 0, %if.then6 ], [ -12, %if.end9.cleanup_crit_edge ], [ 0, %if.then49 ], [ 0, %do.body1 ], [ 0, %if.end33 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_accel_ipsec_device_caps(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_accel_ipsec_fs_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5e_ipsec_cleanup(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ipsec1 = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 44
  %0 = ptrtoint ptr %ipsec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ipsec1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @mlx5e_accel_ipsec_fs_cleanup(ptr noundef %priv) #11
  %wq = getelementptr inbounds %struct.mlx5e_ipsec, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wq, align 8
  tail call void @destroy_workqueue(ptr noundef %3) #11
  %halloc = getelementptr inbounds %struct.mlx5e_ipsec, ptr %1, i32 0, i32 4
  tail call void @ida_destroy(ptr noundef %halloc) #11
  tail call void @kfree(ptr noundef nonnull %1) #11
  %4 = ptrtoint ptr %ipsec1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %ipsec1, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_accel_ipsec_fs_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5e_ipsec_build_netdev(ptr nocapture noundef readonly %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mdev1 = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %0 = ptrtoint ptr %mdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev1, align 64
  %netdev2 = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 22
  %2 = ptrtoint ptr %netdev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %netdev2, align 4
  %call = tail call i32 @mlx5_accel_ipsec_device_caps(ptr noundef %1) #11
  %and = and i32 %call, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.body_crit_edge, label %lor.lhs.false

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

lor.lhs.false:                                    ; preds = %entry
  %arrayidx = getelementptr %struct.mlx5_core_dev, ptr %1, i32 0, i32 8, i32 0, i32 1
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %add.ptr = getelementptr i32, ptr %5, i32 1
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %tobool4.not = icmp sgt i32 %7, -1
  br i1 %tobool4.not, label %lor.lhs.false.do.body_crit_edge, label %do.end14

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

do.body:                                          ; preds = %lor.lhs.false.do.body_crit_edge, %entry.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5e_ipsec_build_netdev.__UNIQUE_ID_ddebug654, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5e_ipsec_build_netdev, %if.then9)) #11
          to label %cleanup [label %if.then9], !srcloc !103

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  %10 = tail call i32 @llvm.read_register.i32(metadata !88) #11
  %and.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 68
  %14 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlx5e_ipsec_build_netdev.__UNIQUE_ID_ddebug654, ptr noundef %9, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.8, i32 noundef 537, i32 noundef %15) #11
  br label %cleanup

do.end14:                                         ; preds = %lor.lhs.false
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %17, ptr noundef nonnull @.str.10) #15
  %xfrmdev_ops = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 47
  %18 = ptrtoint ptr %xfrmdev_ops to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @mlx5e_ipsec_xfrmdev_ops, ptr %xfrmdev_ops, align 4
  %features = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 23
  %19 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %features, align 16
  %or = or i64 %20, 1125899906842624
  store i64 %or, ptr %features, align 16
  %hw_enc_features = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 27
  %21 = ptrtoint ptr %hw_enc_features to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %hw_enc_features, align 16
  %or16 = or i64 %22, 1125899906842624
  store i64 %or16, ptr %hw_enc_features, align 16
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx, align 4
  %add.ptr22 = getelementptr i32, ptr %24, i32 1
  %25 = ptrtoint ptr %add.ptr22 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %add.ptr22, align 4
  %27 = and i32 %26, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool25.not = icmp eq i32 %27, 0
  br i1 %tobool25.not, label %do.body27, label %if.end47

do.body27:                                        ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5e_ipsec_build_netdev.__UNIQUE_ID_ddebug655, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5e_ipsec_build_netdev, %if.then39)) #11
          to label %cleanup [label %if.then39], !srcloc !103

if.then39:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #13
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 8
  %30 = tail call i32 @llvm.read_register.i32(metadata !88) #11
  %and.i145 = and i32 %30, -16384
  %31 = inttoptr i32 %and.i145 to ptr
  %task42 = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %task42 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %task42, align 8
  %pid43 = getelementptr inbounds %struct.task_struct, ptr %33, i32 0, i32 68
  %34 = ptrtoint ptr %pid43 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %pid43, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlx5e_ipsec_build_netdev.__UNIQUE_ID_ddebug655, ptr noundef %29, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.8, i32 noundef 547, i32 noundef %35) #11
  br label %cleanup

if.end47:                                         ; preds = %do.end14
  %or49 = or i64 %20, 3377699720527872
  %36 = ptrtoint ptr %features to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %or49, ptr %features, align 16
  %or51 = or i64 %22, 3377699720527872
  %37 = ptrtoint ptr %hw_enc_features to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %or51, ptr %hw_enc_features, align 16
  %call52 = tail call i32 @mlx5_accel_ipsec_device_caps(ptr noundef %1) #11
  %and53 = and i32 %call52, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  br i1 %tobool54.not, label %if.end47.do.body66_crit_edge, label %lor.lhs.false55

if.end47.do.body66_crit_edge:                     ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body66

lor.lhs.false55:                                  ; preds = %if.end47
  %38 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx, align 4
  %add.ptr61 = getelementptr i32, ptr %39, i32 1
  %40 = ptrtoint ptr %add.ptr61 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %add.ptr61, align 4
  %42 = and i32 %41, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool64.not = icmp eq i32 %42, 0
  br i1 %tobool64.not, label %lor.lhs.false55.do.body66_crit_edge, label %if.end86

lor.lhs.false55.do.body66_crit_edge:              ; preds = %lor.lhs.false55
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body66

do.body66:                                        ; preds = %lor.lhs.false55.do.body66_crit_edge, %if.end47.do.body66_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5e_ipsec_build_netdev.__UNIQUE_ID_ddebug656, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5e_ipsec_build_netdev, %if.then78)) #11
          to label %cleanup [label %if.then78], !srcloc !103

if.then78:                                        ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #13
  %43 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %1, align 8
  %45 = tail call i32 @llvm.read_register.i32(metadata !88) #11
  %and.i146 = and i32 %45, -16384
  %46 = inttoptr i32 %and.i146 to ptr
  %task81 = getelementptr inbounds %struct.thread_info, ptr %46, i32 0, i32 2
  %47 = ptrtoint ptr %task81 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %task81, align 8
  %pid82 = getelementptr inbounds %struct.task_struct, ptr %48, i32 0, i32 68
  %49 = ptrtoint ptr %pid82 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %pid82, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlx5e_ipsec_build_netdev.__UNIQUE_ID_ddebug656, ptr noundef %44, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.8, i32 noundef 556, i32 noundef %50) #11
  br label %cleanup

if.end86:                                         ; preds = %lor.lhs.false55
  %call87 = tail call fastcc zeroext i1 @mlx5_is_ipsec_device(ptr noundef %1)
  br i1 %call87, label %if.then88, label %if.end86.do.body91_crit_edge

if.end86.do.body91_crit_edge:                     ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body91

if.then88:                                        ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #13
  %gso_partial_features = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 29
  %51 = ptrtoint ptr %gso_partial_features to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %gso_partial_features, align 64
  %or89 = or i64 %52, 2147483648
  store i64 %or89, ptr %gso_partial_features, align 64
  br label %do.body91

do.body91:                                        ; preds = %if.then88, %if.end86.do.body91_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5e_ipsec_build_netdev.__UNIQUE_ID_ddebug657, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5e_ipsec_build_netdev, %if.then103)) #11
          to label %do.end110 [label %if.then103], !srcloc !103

if.then103:                                       ; preds = %do.body91
  call void @__sanitizer_cov_trace_pc() #13
  %53 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %1, align 8
  %55 = tail call i32 @llvm.read_register.i32(metadata !88) #11
  %and.i147 = and i32 %55, -16384
  %56 = inttoptr i32 %and.i147 to ptr
  %task106 = getelementptr inbounds %struct.thread_info, ptr %56, i32 0, i32 2
  %57 = ptrtoint ptr %task106 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %task106, align 8
  %pid107 = getelementptr inbounds %struct.task_struct, ptr %58, i32 0, i32 68
  %59 = ptrtoint ptr %pid107 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %pid107, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlx5e_ipsec_build_netdev.__UNIQUE_ID_ddebug657, ptr noundef %54, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.8, i32 noundef 563, i32 noundef %60) #11
  br label %do.end110

do.end110:                                        ; preds = %if.then103, %do.body91
  %61 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %features, align 16
  %or112 = or i64 %62, 2147483648
  store i64 %or112, ptr %features, align 16
  %hw_features = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 24
  %63 = ptrtoint ptr %hw_features to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %hw_features, align 8
  %or113 = or i64 %64, 2147483648
  store i64 %or113, ptr %hw_features, align 8
  %65 = ptrtoint ptr %hw_enc_features to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %hw_enc_features, align 16
  %or115 = or i64 %66, 2147483648
  store i64 %or115, ptr %hw_enc_features, align 16
  br label %cleanup

cleanup:                                          ; preds = %do.end110, %if.then78, %do.body66, %if.then39, %do.body27, %if.then9, %do.body
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc zeroext i1 @mlx5_is_ipsec_device(ptr nocapture noundef readonly %mdev) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %caps = getelementptr inbounds %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 8
  %0 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %caps, align 8
  %add.ptr = getelementptr i32, ptr %1, i32 35
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr, align 4
  %4 = and i32 %3, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  %add.ptr6 = getelementptr i32, ptr %1, i32 45
  %5 = ptrtoint ptr %add.ptr6 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %add.ptr6, align 4
  %7 = and i32 %6, 7936
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool9.not = icmp eq i32 %7, 0
  br i1 %tobool9.not, label %if.end.return_crit_edge, label %if.end11

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end11:                                         ; preds = %if.end
  %add.ptr17 = getelementptr i64, ptr %1, i32 16
  %8 = ptrtoint ptr %add.ptr17 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %add.ptr17, align 8
  %and18 = and i64 %9, 524288
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and18)
  %tobool19.not = icmp eq i64 %and18, 0
  br i1 %tobool19.not, label %if.end11.return_crit_edge, label %if.end21

if.end11.return_crit_edge:                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end21:                                         ; preds = %if.end11
  %arrayidx24 = getelementptr %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 8, i32 0, i32 21
  %10 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx24, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %14 = and i32 %13, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool30.not = icmp eq i32 %14, 0
  br i1 %tobool30.not, label %if.end21.return_crit_edge, label %land.rhs

if.end21.return_crit_edge:                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

land.rhs:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx33 = getelementptr %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 8, i32 0, i32 1
  %15 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx33, align 4
  %add.ptr36 = getelementptr i32, ptr %16, i32 1
  %17 = ptrtoint ptr %add.ptr36 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %add.ptr36, align 4
  %19 = and i32 %18, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool39 = icmp ne i32 %19, 0
  br label %return

return:                                           ; preds = %land.rhs, %if.end21.return_crit_edge, %if.end11.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i1 [ false, %entry.return_crit_edge ], [ false, %if.end.return_crit_edge ], [ false, %if.end11.return_crit_edge ], [ false, %if.end21.return_crit_edge ], [ %tobool39, %land.rhs ]
  ret i1 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5e_xfrm_add_state(ptr noundef %x) #0 align 64 {
entry:
  %attrs = alloca %struct.mlx5_accel_esp_xfrm_attrs, align 8
  %sa_handle = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %real_dev = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 41, i32 2
  %0 = ptrtoint ptr %real_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %real_dev, align 8
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %attrs) #11
  %2 = call ptr @memset(ptr %attrs, i32 255, i32 136)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sa_handle) #11
  %3 = ptrtoint ptr %sa_handle to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %sa_handle, align 4, !annotation !104
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  %aalgo.i = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 14, i32 3
  %4 = ptrtoint ptr %aalgo.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %aalgo.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp.not.i = icmp eq i8 %5, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %1, ptr noundef nonnull @.str.20) #15
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %ealgo.i = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 14, i32 4
  %6 = ptrtoint ptr %ealgo.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ealgo.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 20, i8 %7)
  %cmp4.not.i = icmp eq i8 %7, 20
  br i1 %cmp4.not.i, label %if.end7.i, label %if.then6.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %1, ptr noundef nonnull @.str.21) #15
  br label %cleanup

if.end7.i:                                        ; preds = %if.end.i
  %calgo.i = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 14, i32 5
  %8 = ptrtoint ptr %calgo.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %calgo.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp10.not.i = icmp eq i8 %9, 0
  br i1 %cmp10.not.i, label %if.end13.i, label %if.then12.i

if.then12.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %1, ptr noundef nonnull @.str.22) #15
  br label %cleanup

if.end13.i:                                       ; preds = %if.end7.i
  %flags.i = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 14, i32 6
  %10 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %flags.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %11)
  %tobool.not.i = icmp sgt i8 %11, -1
  br i1 %tobool.not.i, label %if.end13.i.if.end20.i_crit_edge, label %land.lhs.true.i

if.end13.i.if.end20.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20.i

land.lhs.true.i:                                  ; preds = %if.end13.i
  %mdev.i = getelementptr i8, ptr %1, i32 11328
  %12 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mdev.i, align 64
  %call16.i = tail call i32 @mlx5_accel_ipsec_device_caps(ptr noundef %13) #11
  %and17.i = and i32 %call16.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i)
  %tobool18.not.i = icmp eq i32 %and17.i, 0
  br i1 %tobool18.not.i, label %if.then19.i, label %land.lhs.true.i.if.end20.i_crit_edge

land.lhs.true.i.if.end20.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20.i

if.then19.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %1, ptr noundef nonnull @.str.23) #15
  br label %cleanup

if.end20.i:                                       ; preds = %land.lhs.true.i.if.end20.i_crit_edge, %if.end13.i.if.end20.i_crit_edge
  %family.i = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 14, i32 7
  %14 = ptrtoint ptr %family.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %family.i, align 2
  %16 = zext i16 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values)
  switch i16 %15, label %if.then31.i [
    i16 2, label %if.end20.i.if.end32.i_crit_edge
    i16 10, label %if.end20.i.if.end32.i_crit_edge111
  ]

if.end20.i.if.end32.i_crit_edge111:               ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32.i

if.end20.i.if.end32.i_crit_edge:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32.i

if.then31.i:                                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %1, ptr noundef nonnull @.str.24) #15
  br label %cleanup

if.end32.i:                                       ; preds = %if.end20.i.if.end32.i_crit_edge, %if.end20.i.if.end32.i_crit_edge111
  %mode.i = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 14, i32 1
  %17 = ptrtoint ptr %mode.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %18)
  %switch.i = icmp ult i8 %18, 2
  br i1 %switch.i, label %if.end44.i, label %do.end.i

do.end.i:                                         ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 133
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i, ptr noundef nonnull @.str.25) #15
  br label %cleanup

if.end44.i:                                       ; preds = %if.end32.i
  %proto.i = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 7, i32 2
  %19 = ptrtoint ptr %proto.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %proto.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 50, i8 %20)
  %cmp46.not.i = icmp eq i8 %20, 50
  br i1 %cmp46.not.i, label %if.end49.i, label %if.then48.i

if.then48.i:                                      ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %1, ptr noundef nonnull @.str.27) #15
  br label %cleanup

if.end49.i:                                       ; preds = %if.end44.i
  %encap.i = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 24
  %21 = ptrtoint ptr %encap.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %encap.i, align 8
  %tobool50.not.i = icmp eq ptr %22, null
  br i1 %tobool50.not.i, label %if.end52.i, label %if.then51.i

if.then51.i:                                      ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %1, ptr noundef nonnull @.str.28) #15
  br label %cleanup

if.end52.i:                                       ; preds = %if.end49.i
  %aead.i = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 19
  %23 = ptrtoint ptr %aead.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %aead.i, align 4
  %tobool53.not.i = icmp eq ptr %24, null
  br i1 %tobool53.not.i, label %if.then54.i, label %if.end55.i

if.then54.i:                                      ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %1, ptr noundef nonnull @.str.29) #15
  br label %cleanup

if.end55.i:                                       ; preds = %if.end52.i
  %alg_icv_len.i = getelementptr inbounds %struct.xfrm_algo_aead, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %alg_icv_len.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %alg_icv_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %26)
  %cmp57.not.i = icmp eq i32 %26, 128
  br i1 %cmp57.not.i, label %if.end60.i, label %if.then59.i

if.then59.i:                                      ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %1, ptr noundef nonnull @.str.30) #15
  br label %cleanup

if.end60.i:                                       ; preds = %if.end55.i
  %alg_key_len.i = getelementptr inbounds %struct.xfrm_algo_aead, ptr %24, i32 0, i32 1
  %27 = ptrtoint ptr %alg_key_len.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %alg_key_len.i, align 4
  %29 = zext i32 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %28, label %if.then69.i [
    i32 160, label %if.end60.i.if.end70.i_crit_edge
    i32 288, label %if.end60.i.if.end70.i_crit_edge112
  ]

if.end60.i.if.end70.i_crit_edge112:               ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end70.i

if.end60.i.if.end70.i_crit_edge:                  ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end70.i

if.then69.i:                                      ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %1, ptr noundef nonnull @.str.31) #15
  br label %cleanup

if.end70.i:                                       ; preds = %if.end60.i.if.end70.i_crit_edge, %if.end60.i.if.end70.i_crit_edge112
  %tfcpad.i = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 11
  %30 = ptrtoint ptr %tfcpad.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %tfcpad.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool71.not.i = icmp eq i32 %31, 0
  br i1 %tobool71.not.i, label %if.end73.i, label %if.then72.i

if.then72.i:                                      ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %1, ptr noundef nonnull @.str.32) #15
  br label %cleanup

if.end73.i:                                       ; preds = %if.end70.i
  %geniv.i = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 20
  %32 = ptrtoint ptr %geniv.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %geniv.i, align 8
  %tobool74.not.i = icmp eq ptr %33, null
  br i1 %tobool74.not.i, label %if.then75.i, label %if.end76.i

if.then75.i:                                      ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %1, ptr noundef nonnull @.str.33) #15
  br label %cleanup

if.end76.i:                                       ; preds = %if.end73.i
  %call78.i = tail call i32 @strcmp(ptr noundef nonnull %33, ptr noundef nonnull dereferenceable(6) @.str.34) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78.i)
  %tobool79.not.i = icmp eq i32 %call78.i, 0
  br i1 %tobool79.not.i, label %if.end81.i, label %if.then80.i

if.then80.i:                                      ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %1, ptr noundef nonnull @.str.35) #15
  br label %cleanup

if.end81.i:                                       ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %15)
  %cmp85.i = icmp eq i16 %15, 10
  br i1 %cmp85.i, label %land.lhs.true87.i, label %if.end81.i.if.end_crit_edge

if.end81.i.if.end_crit_edge:                      ; preds = %if.end81.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true87.i:                                ; preds = %if.end81.i
  %mdev88.i = getelementptr i8, ptr %1, i32 11328
  %34 = ptrtoint ptr %mdev88.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mdev88.i, align 64
  %call89.i = tail call i32 @mlx5_accel_ipsec_device_caps(ptr noundef %35) #11
  %and90.i = and i32 %call89.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and90.i)
  %tobool91.not.i = icmp eq i32 %and90.i, 0
  br i1 %tobool91.not.i, label %if.then92.i, label %land.lhs.true87.i.if.end_crit_edge

land.lhs.true87.i.if.end_crit_edge:               ; preds = %land.lhs.true87.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then92.i:                                      ; preds = %land.lhs.true87.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %1, ptr noundef nonnull @.str.36) #15
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true87.i.if.end_crit_edge, %if.end81.i.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %36 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %36, i32 noundef 3520, i32 noundef 52) #14
  %tobool3.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %x6 = getelementptr inbounds %struct.mlx5e_ipsec_sa_entry, ptr %call7.i.i, i32 0, i32 3
  %37 = ptrtoint ptr %x6 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %x, ptr %x6, align 4
  %ipsec = getelementptr i8, ptr %1, i32 30244
  %38 = ptrtoint ptr %ipsec to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ipsec, align 4
  %ipsec7 = getelementptr inbounds %struct.mlx5e_ipsec_sa_entry, ptr %call7.i.i, i32 0, i32 4
  %40 = ptrtoint ptr %ipsec7 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %39, ptr %ipsec7, align 8
  %41 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %flags.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %42)
  %tobool.not.i85 = icmp sgt i8 %42, -1
  br i1 %tobool.not.i85, label %if.then.i86, label %if.end.i88

if.then.i86:                                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  %trigger.i = getelementptr inbounds %struct.mlx5e_ipsec_sa_entry, ptr %call7.i.i, i32 0, i32 1, i32 1
  %43 = ptrtoint ptr %trigger.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %bf.load.i = load i8, ptr %trigger.i, align 4
  %bf.clear.i = and i8 %bf.load.i, 127
  store i8 %bf.clear.i, ptr %trigger.i, align 4
  br label %mlx5e_ipsec_update_esn_state.exit

if.end.i88:                                       ; preds = %if.end5
  %replay_esn2.i = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 30
  %44 = ptrtoint ptr %replay_esn2.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %replay_esn2.i, align 8
  %seq.i = getelementptr inbounds %struct.xfrm_replay_state_esn, ptr %45, i32 0, i32 2
  %46 = ptrtoint ptr %seq.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %seq.i, align 4
  %replay_window.i = getelementptr inbounds %struct.xfrm_replay_state_esn, ptr %45, i32 0, i32 5
  %48 = ptrtoint ptr %replay_window.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %replay_window.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %49)
  %cmp.not.i87 = icmp ult i32 %47, %49
  %sub.i = add i32 %47, 1
  %add.i = sub i32 %sub.i, %49
  %seq_bottom.0.i = select i1 %cmp.not.i87, i32 0, i32 %add.i
  %esn_state8.i = getelementptr inbounds %struct.mlx5e_ipsec_sa_entry, ptr %call7.i.i, i32 0, i32 1
  %overlap9.i = getelementptr inbounds %struct.mlx5e_ipsec_sa_entry, ptr %call7.i.i, i32 0, i32 1, i32 1
  %50 = ptrtoint ptr %overlap9.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %bf.load10.i = load i8, ptr %overlap9.i, align 4
  %call.i = tail call i32 @xfrm_replay_seqhi(ptr noundef %x, i32 noundef %seq_bottom.0.i) #11
  %51 = ptrtoint ptr %esn_state8.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %call.i, ptr %esn_state8.i, align 8
  %bf.set21.i = or i8 %bf.load10.i, -128
  %52 = ptrtoint ptr %overlap9.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %bf.set21.i, ptr %overlap9.i, align 4
  %53 = and i8 %bf.load10.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool23.not.i = icmp eq i8 %53, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %seq_bottom.0.i)
  %cmp24.i = icmp slt i32 %seq_bottom.0.i, 0
  %54 = or i1 %tobool23.not.i, %cmp24.i
  br i1 %54, label %if.else.i, label %if.then28.i, !prof !101

if.then28.i:                                      ; preds = %if.end.i88
  call void @__sanitizer_cov_trace_pc() #13
  %inc.i = add i32 %call.i, 1
  %55 = ptrtoint ptr %esn_state8.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %inc.i, ptr %esn_state8.i, align 8
  %bf.clear32.i = and i8 %bf.set21.i, -65
  %56 = ptrtoint ptr %overlap9.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %bf.clear32.i, ptr %overlap9.i, align 4
  br label %mlx5e_ipsec_update_esn_state.exit

if.else.i:                                        ; preds = %if.end.i88
  %spec.select.i = and i1 %tobool23.not.i, %cmp24.i
  br i1 %spec.select.i, label %if.then45.i, label %if.else.i.mlx5e_ipsec_update_esn_state.exit_crit_edge, !prof !100

if.else.i.mlx5e_ipsec_update_esn_state.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlx5e_ipsec_update_esn_state.exit

if.then45.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  %bf.set50.i = or i8 %bf.load10.i, -64
  %57 = ptrtoint ptr %overlap9.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %bf.set50.i, ptr %overlap9.i, align 4
  br label %mlx5e_ipsec_update_esn_state.exit

mlx5e_ipsec_update_esn_state.exit:                ; preds = %if.then45.i, %if.else.i.mlx5e_ipsec_update_esn_state.exit_crit_edge, %if.then28.i, %if.then.i86
  %58 = ptrtoint ptr %x6 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %x6, align 4
  %keymat.i = getelementptr inbounds %struct.mlx5_accel_esp_xfrm_attrs, ptr %attrs, i32 0, i32 10
  %60 = call ptr @memset(ptr %attrs, i32 0, i32 136)
  %aead2.i = getelementptr inbounds %struct.xfrm_state, ptr %59, i32 0, i32 19
  %61 = ptrtoint ptr %aead2.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %aead2.i, align 4
  %alg_key_len.i90 = getelementptr inbounds %struct.xfrm_algo_aead, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %alg_key_len.i90 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %alg_key_len.i90, align 4
  %add.i91 = add i32 %64, 7
  %div74.i = lshr i32 %add.i91, 3
  %sub.i92 = add nsw i32 %div74.i, -4
  %aes_key.i = getelementptr inbounds %struct.mlx5_accel_esp_xfrm_attrs, ptr %attrs, i32 0, i32 10, i32 0, i32 5
  %alg_key.i = getelementptr inbounds %struct.xfrm_algo_aead, ptr %62, i32 0, i32 3
  %65 = call ptr @memcpy(ptr %aes_key.i, ptr %alg_key.i, i32 %sub.i92)
  %mul.i = shl i32 %sub.i92, 3
  %key_len5.i = getelementptr inbounds %struct.mlx5_accel_esp_xfrm_attrs, ptr %attrs, i32 0, i32 10, i32 0, i32 4
  %66 = ptrtoint ptr %key_len5.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %mul.i, ptr %key_len5.i, align 4
  %data.i = getelementptr inbounds %struct.xfrm_state, ptr %59, i32 0, i32 51
  %67 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %data.i, align 8
  %__crt_alg.i.i.i = getelementptr inbounds %struct.crypto_aead, ptr %68, i32 0, i32 3, i32 3
  %69 = ptrtoint ptr %__crt_alg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %__crt_alg.i.i.i, align 4
  %ivsize.i.i.i = getelementptr i8, ptr %70, i32 -104
  %71 = ptrtoint ptr %ivsize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %ivsize.i.i.i, align 8
  %salt.i = getelementptr inbounds %struct.crypto_aead, ptr %68, i32 1, i32 2, i32 44
  %73 = call ptr @memcpy(ptr %keymat.i, ptr %salt.i, i32 %72)
  %salt7.i = getelementptr inbounds %struct.mlx5_accel_esp_xfrm_attrs, ptr %attrs, i32 0, i32 10, i32 0, i32 2
  %74 = load ptr, ptr %aead2.i, align 4
  %alg_key9.i = getelementptr inbounds %struct.xfrm_algo_aead, ptr %74, i32 0, i32 3
  %add.ptr.i93 = getelementptr i8, ptr %alg_key9.i, i32 %sub.i92
  %75 = ptrtoint ptr %add.ptr.i93 to i32
  call void @__asan_loadN_noabort(i32 %75, i32 4)
  %76 = load i32, ptr %add.ptr.i93, align 1
  %77 = ptrtoint ptr %salt7.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %76, ptr %salt7.i, align 4
  %alg_icv_len.i94 = getelementptr inbounds %struct.xfrm_algo_aead, ptr %74, i32 0, i32 2
  %78 = ptrtoint ptr %alg_icv_len.i94 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %alg_icv_len.i94, align 4
  %icv_len.i = getelementptr inbounds %struct.mlx5_accel_esp_xfrm_attrs, ptr %attrs, i32 0, i32 10, i32 0, i32 3
  %80 = ptrtoint ptr %icv_len.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %79, ptr %icv_len.i, align 8
  %trigger.i95 = getelementptr inbounds %struct.mlx5e_ipsec_sa_entry, ptr %call7.i.i, i32 0, i32 1, i32 1
  %81 = ptrtoint ptr %trigger.i95 to i32
  call void @__asan_load1_noabort(i32 %81)
  %bf.load.i96 = load i8, ptr %trigger.i95, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i96)
  %tobool.not.i97 = icmp sgt i8 %bf.load.i96, -1
  br i1 %tobool.not.i97, label %mlx5e_ipsec_update_esn_state.exit.mlx5e_ipsec_build_accel_xfrm_attrs.exit_crit_edge, label %if.then.i99

mlx5e_ipsec_update_esn_state.exit.mlx5e_ipsec_build_accel_xfrm_attrs.exit_crit_edge: ; preds = %mlx5e_ipsec_update_esn_state.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlx5e_ipsec_build_accel_xfrm_attrs.exit

if.then.i99:                                      ; preds = %mlx5e_ipsec_update_esn_state.exit
  %esn_state.i = getelementptr inbounds %struct.mlx5e_ipsec_sa_entry, ptr %call7.i.i, i32 0, i32 1
  %flags.i98 = getelementptr inbounds %struct.mlx5_accel_esp_xfrm_attrs, ptr %attrs, i32 0, i32 5
  %82 = ptrtoint ptr %flags.i98 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %flags.i98, align 4
  %or.i = or i32 %83, 2
  store i32 %or.i, ptr %flags.i98, align 4
  %84 = ptrtoint ptr %esn_state.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %esn_state.i, align 8
  %esn13.i = getelementptr inbounds %struct.mlx5_accel_esp_xfrm_attrs, ptr %attrs, i32 0, i32 1
  %86 = ptrtoint ptr %esn13.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %85, ptr %esn13.i, align 4
  %87 = and i8 %bf.load.i96, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %tobool17.not.i = icmp eq i8 %87, 0
  br i1 %tobool17.not.i, label %if.then.i99.mlx5e_ipsec_build_accel_xfrm_attrs.exit_crit_edge, label %if.then18.i

if.then.i99.mlx5e_ipsec_build_accel_xfrm_attrs.exit_crit_edge: ; preds = %if.then.i99
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlx5e_ipsec_build_accel_xfrm_attrs.exit

if.then18.i:                                      ; preds = %if.then.i99
  call void @__sanitizer_cov_trace_pc() #13
  %or20.i = or i32 %83, 6
  %88 = ptrtoint ptr %flags.i98 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %or20.i, ptr %flags.i98, align 4
  br label %mlx5e_ipsec_build_accel_xfrm_attrs.exit

mlx5e_ipsec_build_accel_xfrm_attrs.exit:          ; preds = %if.then18.i, %if.then.i99.mlx5e_ipsec_build_accel_xfrm_attrs.exit_crit_edge, %mlx5e_ipsec_update_esn_state.exit.mlx5e_ipsec_build_accel_xfrm_attrs.exit_crit_edge
  %handle.i = getelementptr inbounds %struct.mlx5e_ipsec_sa_entry, ptr %call7.i.i, i32 0, i32 2
  %89 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %handle.i, align 8
  %sa_handle.i = getelementptr inbounds %struct.mlx5_accel_esp_xfrm_attrs, ptr %attrs, i32 0, i32 6
  %91 = ptrtoint ptr %sa_handle.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %90, ptr %sa_handle.i, align 8
  %keymat_type.i = getelementptr inbounds %struct.mlx5_accel_esp_xfrm_attrs, ptr %attrs, i32 0, i32 9
  %92 = ptrtoint ptr %keymat_type.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 1, ptr %keymat_type.i, align 4
  %flags22.i = getelementptr inbounds %struct.xfrm_state, ptr %59, i32 0, i32 41, i32 5
  %93 = ptrtoint ptr %flags22.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %flags22.i, align 4
  %95 = lshr i8 %94, 1
  %.lobit.i = and i8 %95, 1
  %96 = xor i8 %.lobit.i, 1
  %97 = zext i8 %96 to i32
  %98 = ptrtoint ptr %attrs to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %97, ptr %attrs, align 8
  %mode.i100 = getelementptr inbounds %struct.xfrm_state, ptr %59, i32 0, i32 14, i32 1
  %99 = ptrtoint ptr %mode.i100 to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %mode.i100, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %100)
  %cmp.i = icmp eq i8 %100, 0
  %cond26.i = zext i1 %cmp.i to i32
  %flags27.i = getelementptr inbounds %struct.mlx5_accel_esp_xfrm_attrs, ptr %attrs, i32 0, i32 5
  %101 = ptrtoint ptr %flags27.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %flags27.i, align 4
  %or28.i = or i32 %102, %cond26.i
  store i32 %or28.i, ptr %flags27.i, align 4
  %id.i = getelementptr inbounds %struct.xfrm_state, ptr %59, i32 0, i32 7
  %spi.i = getelementptr inbounds %struct.xfrm_state, ptr %59, i32 0, i32 7, i32 1
  %103 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %spi.i, align 4
  %spi29.i = getelementptr inbounds %struct.mlx5_accel_esp_xfrm_attrs, ptr %attrs, i32 0, i32 2
  %105 = ptrtoint ptr %spi29.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %104, ptr %spi29.i, align 8
  %saddr.i = getelementptr inbounds %struct.mlx5_accel_esp_xfrm_attrs, ptr %attrs, i32 0, i32 11
  %saddr31.i = getelementptr inbounds %struct.xfrm_state, ptr %59, i32 0, i32 14, i32 8
  %106 = call ptr @memcpy(ptr %saddr.i, ptr %saddr31.i, i32 16)
  %daddr.i = getelementptr inbounds %struct.mlx5_accel_esp_xfrm_attrs, ptr %attrs, i32 0, i32 12
  %107 = call ptr @memcpy(ptr %daddr.i, ptr %id.i, i32 16)
  %family.i101 = getelementptr inbounds %struct.xfrm_state, ptr %59, i32 0, i32 14, i32 7
  %108 = ptrtoint ptr %family.i101 to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %family.i101, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %109)
  %cmp38.i = icmp ne i16 %109, 2
  %conv40.i = zext i1 %cmp38.i to i8
  %is_ipv6.i = getelementptr inbounds %struct.mlx5_accel_esp_xfrm_attrs, ptr %attrs, i32 0, i32 13
  %110 = ptrtoint ptr %is_ipv6.i to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 %conv40.i, ptr %is_ipv6.i, align 8
  %mdev = getelementptr i8, ptr %1, i32 11328
  %111 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %mdev, align 64
  %call9 = call ptr @mlx5_accel_esp_create_xfrm(ptr noundef %112, ptr noundef nonnull %attrs, i32 noundef 1) #11
  %xfrm = getelementptr inbounds %struct.mlx5e_ipsec_sa_entry, ptr %call7.i.i, i32 0, i32 5
  %113 = ptrtoint ptr %xfrm to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %call9, ptr %xfrm, align 4
  %cmp.i102 = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i102, label %if.then12, label %if.end15

if.then12:                                        ; preds = %mlx5e_ipsec_build_accel_xfrm_attrs.exit
  call void @__sanitizer_cov_trace_pc() #13
  %114 = ptrtoint ptr %call9 to i32
  br label %err_sa_entry

if.end15:                                         ; preds = %mlx5e_ipsec_build_accel_xfrm_attrs.exit
  %115 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %mdev, align 64
  %call18 = call ptr @mlx5_accel_esp_create_hw_context(ptr noundef %116, ptr noundef %call9, ptr noundef nonnull %sa_handle) #11
  %hw_context = getelementptr inbounds %struct.mlx5e_ipsec_sa_entry, ptr %call7.i.i, i32 0, i32 6
  %117 = ptrtoint ptr %hw_context to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %call18, ptr %hw_context, align 8
  %cmp.i103 = icmp ugt ptr %call18, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i103, label %if.then21, label %if.end24

if.then21:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  %118 = ptrtoint ptr %call18 to i32
  br label %err_xfrm

if.end24:                                         ; preds = %if.end15
  %119 = ptrtoint ptr %sa_handle to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %sa_handle, align 4
  %ipsec_obj_id = getelementptr inbounds %struct.mlx5e_ipsec_sa_entry, ptr %call7.i.i, i32 0, i32 8
  %121 = ptrtoint ptr %ipsec_obj_id to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %120, ptr %ipsec_obj_id, align 8
  %122 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %mdev, align 64
  %caps.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %123, i32 0, i32 8
  %124 = ptrtoint ptr %caps.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %caps.i.i, align 8
  %add.ptr.i.i = getelementptr i32, ptr %125, i32 35
  %126 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %add.ptr.i.i, align 4
  %128 = and i32 %127, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %128)
  %tobool.not.i.i = icmp eq i32 %128, 0
  br i1 %tobool.not.i.i, label %if.end24.if.end28_crit_edge, label %if.end.i.i

if.end24.if.end28_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28

if.end.i.i:                                       ; preds = %if.end24
  %add.ptr6.i.i = getelementptr i32, ptr %125, i32 45
  %129 = ptrtoint ptr %add.ptr6.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %add.ptr6.i.i, align 4
  %131 = and i32 %130, 7936
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %131)
  %tobool9.not.i.i = icmp eq i32 %131, 0
  br i1 %tobool9.not.i.i, label %if.end.i.i.if.end28_crit_edge, label %if.end11.i.i

if.end.i.i.if.end28_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28

if.end11.i.i:                                     ; preds = %if.end.i.i
  %add.ptr17.i.i = getelementptr i64, ptr %125, i32 16
  %132 = ptrtoint ptr %add.ptr17.i.i to i32
  call void @__asan_load8_noabort(i32 %132)
  %133 = load i64, ptr %add.ptr17.i.i, align 8
  %and18.i.i = and i64 %133, 524288
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and18.i.i)
  %tobool19.not.i.i = icmp eq i64 %and18.i.i, 0
  br i1 %tobool19.not.i.i, label %if.end11.i.i.if.end28_crit_edge, label %if.end21.i.i

if.end11.i.i.if.end28_crit_edge:                  ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28

if.end21.i.i:                                     ; preds = %if.end11.i.i
  %arrayidx24.i.i = getelementptr %struct.mlx5_core_dev, ptr %123, i32 0, i32 8, i32 0, i32 21
  %134 = ptrtoint ptr %arrayidx24.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %arrayidx24.i.i, align 4
  %136 = ptrtoint ptr %135 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %135, align 4
  %138 = and i32 %137, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %138)
  %tobool30.not.i.i = icmp eq i32 %138, 0
  br i1 %tobool30.not.i.i, label %if.end21.i.i.if.end28_crit_edge, label %mlx5_is_ipsec_device.exit.i

if.end21.i.i.if.end28_crit_edge:                  ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28

mlx5_is_ipsec_device.exit.i:                      ; preds = %if.end21.i.i
  %arrayidx33.i.i = getelementptr %struct.mlx5_core_dev, ptr %123, i32 0, i32 8, i32 0, i32 1
  %139 = ptrtoint ptr %arrayidx33.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %arrayidx33.i.i, align 4
  %add.ptr36.i.i = getelementptr i32, ptr %140, i32 1
  %141 = ptrtoint ptr %add.ptr36.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %add.ptr36.i.i, align 4
  %143 = and i32 %142, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %143)
  %tobool39.i.not.i = icmp eq i32 %143, 0
  br i1 %tobool39.i.not.i, label %mlx5_is_ipsec_device.exit.i.if.end28_crit_edge, label %mlx5e_xfrm_fs_add_rule.exit

mlx5_is_ipsec_device.exit.i.if.end28_crit_edge:   ; preds = %mlx5_is_ipsec_device.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28

mlx5e_xfrm_fs_add_rule.exit:                      ; preds = %mlx5_is_ipsec_device.exit.i
  %144 = ptrtoint ptr %xfrm to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %xfrm, align 4
  %attrs.i = getelementptr inbounds %struct.mlx5_accel_esp_xfrm, ptr %145, i32 0, i32 1
  %ipsec_rule.i = getelementptr inbounds %struct.mlx5e_ipsec_sa_entry, ptr %call7.i.i, i32 0, i32 9
  %call1.i = call i32 @mlx5e_accel_ipsec_fs_add_rule(ptr noundef %add.ptr.i, ptr noundef %attrs.i, i32 noundef %120, ptr noundef %ipsec_rule.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool26.not = icmp eq i32 %call1.i, 0
  br i1 %tobool26.not, label %mlx5e_xfrm_fs_add_rule.exit.if.end28_crit_edge, label %mlx5e_xfrm_fs_add_rule.exit.err_hw_ctx_crit_edge

mlx5e_xfrm_fs_add_rule.exit.err_hw_ctx_crit_edge: ; preds = %mlx5e_xfrm_fs_add_rule.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_hw_ctx

mlx5e_xfrm_fs_add_rule.exit.if.end28_crit_edge:   ; preds = %mlx5e_xfrm_fs_add_rule.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28

if.end28:                                         ; preds = %mlx5e_xfrm_fs_add_rule.exit.if.end28_crit_edge, %mlx5_is_ipsec_device.exit.i.if.end28_crit_edge, %if.end21.i.i.if.end28_crit_edge, %if.end11.i.i.if.end28_crit_edge, %if.end.i.i.if.end28_crit_edge, %if.end24.if.end28_crit_edge
  %flags = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 41, i32 5
  %146 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %flags, align 4
  %148 = and i8 %147, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %148)
  %tobool30.not = icmp eq i8 %148, 0
  br i1 %tobool30.not, label %if.else, label %if.then31

if.then31:                                        ; preds = %if.end28
  %149 = ptrtoint ptr %sa_handle to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %sa_handle, align 4
  %call32 = call fastcc i32 @mlx5e_ipsec_sadb_rx_add(ptr noundef nonnull %call7.i.i, i32 noundef %150)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.then31.if.end40_crit_edge, label %err_add_rule

if.then31.if.end40_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end40

if.else:                                          ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  %151 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %flags.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %152)
  %tobool39.not = icmp sgt i8 %152, -1
  %cond = select i1 %tobool39.not, ptr @mlx5e_ipsec_set_iv, ptr @mlx5e_ipsec_set_iv_esn
  %set_iv_op = getelementptr inbounds %struct.mlx5e_ipsec_sa_entry, ptr %call7.i.i, i32 0, i32 7
  %153 = ptrtoint ptr %set_iv_op to i32
  call void @__asan_store4_noabort(i32 %153)
  store ptr %cond, ptr %set_iv_op, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.else, %if.then31.if.end40_crit_edge
  %154 = ptrtoint ptr %call7.i.i to i32
  %offload_handle = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 41, i32 3
  %155 = ptrtoint ptr %offload_handle to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %154, ptr %offload_handle, align 4
  br label %cleanup

err_add_rule:                                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @mlx5e_xfrm_fs_del_rule(ptr noundef %add.ptr.i, ptr noundef nonnull %call7.i.i)
  br label %err_hw_ctx

err_hw_ctx:                                       ; preds = %err_add_rule, %mlx5e_xfrm_fs_add_rule.exit.err_hw_ctx_crit_edge
  %err.1 = phi i32 [ %call1.i, %mlx5e_xfrm_fs_add_rule.exit.err_hw_ctx_crit_edge ], [ %call32, %err_add_rule ]
  %156 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %mdev, align 64
  %158 = ptrtoint ptr %hw_context to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %hw_context, align 8
  call void @mlx5_accel_esp_free_hw_context(ptr noundef %157, ptr noundef %159) #11
  br label %err_xfrm

err_xfrm:                                         ; preds = %err_hw_ctx, %if.then21
  %err.2 = phi i32 [ %118, %if.then21 ], [ %err.1, %err_hw_ctx ]
  %160 = ptrtoint ptr %xfrm to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %xfrm, align 4
  call void @mlx5_accel_esp_destroy_xfrm(ptr noundef %161) #11
  br label %err_sa_entry

err_sa_entry:                                     ; preds = %err_xfrm, %if.then12
  %err.3 = phi i32 [ %114, %if.then12 ], [ %err.2, %err_xfrm ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %err_sa_entry, %if.end40, %if.end.cleanup_crit_edge, %if.then92.i, %if.then80.i, %if.then75.i, %if.then72.i, %if.then69.i, %if.then59.i, %if.then54.i, %if.then51.i, %if.then48.i, %do.end.i, %if.then31.i, %if.then19.i, %if.then12.i, %if.then6.i, %if.then.i
  %retval.0 = phi i32 [ %err.3, %err_sa_entry ], [ 0, %if.end40 ], [ -12, %if.end.cleanup_crit_edge ], [ -22, %if.then.i ], [ -22, %if.then6.i ], [ -22, %if.then12.i ], [ -22, %if.then31.i ], [ -22, %do.end.i ], [ -22, %if.then48.i ], [ -22, %if.then51.i ], [ -22, %if.then59.i ], [ -22, %if.then69.i ], [ -22, %if.then72.i ], [ -22, %if.then80.i ], [ -22, %if.then92.i ], [ -22, %if.then75.i ], [ -22, %if.then54.i ], [ -22, %if.then19.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sa_handle) #11
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %attrs) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx5e_xfrm_del_state(ptr noundef readonly %x) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %x, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %offload_handle.i = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 41, i32 3
  %0 = ptrtoint ptr %offload_handle.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %offload_handle.i, align 4
  %2 = inttoptr i32 %1 to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool1.not.i = icmp eq i32 %1, 0
  br i1 %tobool1.not.i, label %if.end.i.cleanup_crit_edge, label %if.end3.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end3.i:                                        ; preds = %if.end.i
  %x4.i = getelementptr inbounds %struct.mlx5e_ipsec_sa_entry, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %x4.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %x4.i, align 4
  %cmp.not.i = icmp eq ptr %4, %x
  br i1 %cmp.not.i, label %if.end3.i.if.end_crit_edge, label %do.end.i, !prof !101

if.end3.i.if.end_crit_edge:                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end.i:                                         ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 56, i32 noundef 9, ptr noundef null) #11
  br label %if.end

if.end:                                           ; preds = %do.end.i, %if.end3.i.if.end_crit_edge
  %flags = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 41, i32 5
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %flags, align 4
  %7 = and i8 %6, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool1.not = icmp eq i8 %7, 0
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.then2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then2:                                         ; preds = %if.end
  %ipsec1.i = getelementptr inbounds %struct.mlx5e_ipsec_sa_entry, ptr %2, i32 0, i32 4
  %8 = ptrtoint ptr %ipsec1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ipsec1.i, align 4
  %sadb_rx_lock.i = getelementptr inbounds %struct.mlx5e_ipsec, ptr %9, i32 0, i32 3
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %sadb_rx_lock.i) #11
  %pprev.i.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %2, i32 0, i32 1
  %10 = ptrtoint ptr %pprev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pprev.i.i.i.i, align 4
  %tobool.not.i.not.i.i.i = icmp eq ptr %11, null
  br i1 %tobool.not.i.not.i.i.i, label %if.then2.mlx5e_ipsec_sadb_rx_del.exit_crit_edge, label %if.then.i.i.i

if.then2.mlx5e_ipsec_sadb_rx_del.exit_crit_edge:  ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlx5e_ipsec_sadb_rx_del.exit

if.then.i.i.i:                                    ; preds = %if.then2
  %12 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %2, align 4
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %13, ptr %11, align 4
  %tobool.not.i7.i.i.i = icmp eq ptr %13, null
  br i1 %tobool.not.i7.i.i.i, label %if.then.i.i.i.__hlist_del.exit.i.i.i_crit_edge, label %do.body13.i.i.i.i

if.then.i.i.i.__hlist_del.exit.i.i.i_crit_edge:   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__hlist_del.exit.i.i.i

do.body13.i.i.i.i:                                ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %pprev14.i.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %13, i32 0, i32 1
  %15 = ptrtoint ptr %pprev14.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %11, ptr %pprev14.i.i.i.i, align 4
  br label %__hlist_del.exit.i.i.i

__hlist_del.exit.i.i.i:                           ; preds = %do.body13.i.i.i.i, %if.then.i.i.i.__hlist_del.exit.i.i.i_crit_edge
  %16 = ptrtoint ptr %pprev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr null, ptr %pprev.i.i.i.i, align 4
  br label %mlx5e_ipsec_sadb_rx_del.exit

mlx5e_ipsec_sadb_rx_del.exit:                     ; preds = %__hlist_del.exit.i.i.i, %if.then2.mlx5e_ipsec_sadb_rx_del.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %sadb_rx_lock.i, i32 noundef %call3.i) #11
  br label %cleanup

cleanup:                                          ; preds = %mlx5e_ipsec_sadb_rx_del.exit, %if.end.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx5e_xfrm_free_state(ptr noundef readonly %x) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %x, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %offload_handle.i = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 41, i32 3
  %0 = ptrtoint ptr %offload_handle.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %offload_handle.i, align 4
  %2 = inttoptr i32 %1 to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool1.not.i = icmp eq i32 %1, 0
  br i1 %tobool1.not.i, label %if.end.i.cleanup_crit_edge, label %if.end3.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end3.i:                                        ; preds = %if.end.i
  %x4.i = getelementptr inbounds %struct.mlx5e_ipsec_sa_entry, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %x4.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %x4.i, align 4
  %cmp.not.i = icmp eq ptr %4, %x
  br i1 %cmp.not.i, label %if.end3.i.to_ipsec_sa_entry.exit_crit_edge, label %do.end.i, !prof !101

if.end3.i.to_ipsec_sa_entry.exit_crit_edge:       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %to_ipsec_sa_entry.exit

do.end.i:                                         ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 56, i32 noundef 9, ptr noundef null) #11
  br label %to_ipsec_sa_entry.exit

to_ipsec_sa_entry.exit:                           ; preds = %do.end.i, %if.end3.i.to_ipsec_sa_entry.exit_crit_edge
  %xso = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 41
  %5 = ptrtoint ptr %xso to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %xso, align 8
  %add.ptr.i = getelementptr i8, ptr %6, i32 2304
  %hw_context = getelementptr inbounds %struct.mlx5e_ipsec_sa_entry, ptr %2, i32 0, i32 6
  %7 = ptrtoint ptr %hw_context to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hw_context, align 4
  %tobool2.not = icmp eq ptr %8, null
  br i1 %tobool2.not, label %to_ipsec_sa_entry.exit.if.end6_crit_edge, label %if.then3

to_ipsec_sa_entry.exit.if.end6_crit_edge:         ; preds = %to_ipsec_sa_entry.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

if.then3:                                         ; preds = %to_ipsec_sa_entry.exit
  %ipsec = getelementptr inbounds %struct.mlx5e_ipsec_sa_entry, ptr %2, i32 0, i32 4
  %9 = ptrtoint ptr %ipsec to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ipsec, align 4
  %wq = getelementptr inbounds %struct.mlx5e_ipsec, ptr %10, i32 0, i32 7
  %11 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %wq, align 8
  tail call void @flush_workqueue(ptr noundef %12) #11
  %mdev.i = getelementptr i8, ptr %6, i32 11328
  %13 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mdev.i, align 64
  %caps.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %14, i32 0, i32 8
  %15 = ptrtoint ptr %caps.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %caps.i.i, align 8
  %add.ptr.i.i = getelementptr i32, ptr %16, i32 35
  %17 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %add.ptr.i.i, align 4
  %19 = and i32 %18, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i.i = icmp eq i32 %19, 0
  br i1 %tobool.not.i.i, label %if.then3.mlx5e_xfrm_fs_del_rule.exit_crit_edge, label %if.end.i.i

if.then3.mlx5e_xfrm_fs_del_rule.exit_crit_edge:   ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlx5e_xfrm_fs_del_rule.exit

if.end.i.i:                                       ; preds = %if.then3
  %add.ptr6.i.i = getelementptr i32, ptr %16, i32 45
  %20 = ptrtoint ptr %add.ptr6.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %add.ptr6.i.i, align 4
  %22 = and i32 %21, 7936
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool9.not.i.i = icmp eq i32 %22, 0
  br i1 %tobool9.not.i.i, label %if.end.i.i.mlx5e_xfrm_fs_del_rule.exit_crit_edge, label %if.end11.i.i

if.end.i.i.mlx5e_xfrm_fs_del_rule.exit_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlx5e_xfrm_fs_del_rule.exit

if.end11.i.i:                                     ; preds = %if.end.i.i
  %add.ptr17.i.i = getelementptr i64, ptr %16, i32 16
  %23 = ptrtoint ptr %add.ptr17.i.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %add.ptr17.i.i, align 8
  %and18.i.i = and i64 %24, 524288
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and18.i.i)
  %tobool19.not.i.i = icmp eq i64 %and18.i.i, 0
  br i1 %tobool19.not.i.i, label %if.end11.i.i.mlx5e_xfrm_fs_del_rule.exit_crit_edge, label %if.end21.i.i

if.end11.i.i.mlx5e_xfrm_fs_del_rule.exit_crit_edge: ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlx5e_xfrm_fs_del_rule.exit

if.end21.i.i:                                     ; preds = %if.end11.i.i
  %arrayidx24.i.i = getelementptr %struct.mlx5_core_dev, ptr %14, i32 0, i32 8, i32 0, i32 21
  %25 = ptrtoint ptr %arrayidx24.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx24.i.i, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 4
  %29 = and i32 %28, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool30.not.i.i = icmp eq i32 %29, 0
  br i1 %tobool30.not.i.i, label %if.end21.i.i.mlx5e_xfrm_fs_del_rule.exit_crit_edge, label %mlx5_is_ipsec_device.exit.i

if.end21.i.i.mlx5e_xfrm_fs_del_rule.exit_crit_edge: ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlx5e_xfrm_fs_del_rule.exit

mlx5_is_ipsec_device.exit.i:                      ; preds = %if.end21.i.i
  %arrayidx33.i.i = getelementptr %struct.mlx5_core_dev, ptr %14, i32 0, i32 8, i32 0, i32 1
  %30 = ptrtoint ptr %arrayidx33.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx33.i.i, align 4
  %add.ptr36.i.i = getelementptr i32, ptr %31, i32 1
  %32 = ptrtoint ptr %add.ptr36.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %add.ptr36.i.i, align 4
  %34 = and i32 %33, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool39.i.not.i = icmp eq i32 %34, 0
  br i1 %tobool39.i.not.i, label %mlx5_is_ipsec_device.exit.i.mlx5e_xfrm_fs_del_rule.exit_crit_edge, label %if.end.i16

mlx5_is_ipsec_device.exit.i.mlx5e_xfrm_fs_del_rule.exit_crit_edge: ; preds = %mlx5_is_ipsec_device.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlx5e_xfrm_fs_del_rule.exit

if.end.i16:                                       ; preds = %mlx5_is_ipsec_device.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %xfrm.i = getelementptr inbounds %struct.mlx5e_ipsec_sa_entry, ptr %2, i32 0, i32 5
  %35 = ptrtoint ptr %xfrm.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %xfrm.i, align 4
  %attrs.i = getelementptr inbounds %struct.mlx5_accel_esp_xfrm, ptr %36, i32 0, i32 1
  %ipsec_rule.i = getelementptr inbounds %struct.mlx5e_ipsec_sa_entry, ptr %2, i32 0, i32 9
  tail call void @mlx5e_accel_ipsec_fs_del_rule(ptr noundef %add.ptr.i, ptr noundef %attrs.i, ptr noundef %ipsec_rule.i) #11
  br label %mlx5e_xfrm_fs_del_rule.exit

mlx5e_xfrm_fs_del_rule.exit:                      ; preds = %if.end.i16, %mlx5_is_ipsec_device.exit.i.mlx5e_xfrm_fs_del_rule.exit_crit_edge, %if.end21.i.i.mlx5e_xfrm_fs_del_rule.exit_crit_edge, %if.end11.i.i.mlx5e_xfrm_fs_del_rule.exit_crit_edge, %if.end.i.i.mlx5e_xfrm_fs_del_rule.exit_crit_edge, %if.then3.mlx5e_xfrm_fs_del_rule.exit_crit_edge
  %xfrm = getelementptr inbounds %struct.mlx5e_ipsec_sa_entry, ptr %2, i32 0, i32 5
  %37 = ptrtoint ptr %xfrm to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %xfrm, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %38, align 8
  %41 = ptrtoint ptr %hw_context to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %hw_context, align 4
  tail call void @mlx5_accel_esp_free_hw_context(ptr noundef %40, ptr noundef %42) #11
  %43 = ptrtoint ptr %xfrm to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %xfrm, align 4
  tail call void @mlx5_accel_esp_destroy_xfrm(ptr noundef %44) #11
  br label %if.end6

if.end6:                                          ; preds = %mlx5e_xfrm_fs_del_rule.exit, %to_ipsec_sa_entry.exit.if.end6_crit_edge
  tail call void @kfree(ptr noundef nonnull %2) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @mlx5e_ipsec_offload_ok(ptr nocapture noundef readonly %skb, ptr nocapture noundef readonly %x) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %family = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 14, i32 7
  %0 = ptrtoint ptr %family to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %family, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %1)
  %cmp = icmp eq i16 %1, 2
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %2 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %4 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %5 to i32
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 %conv.i.i
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %6 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %add.ptr.i.i, align 4
  %bf.clear = and i8 %bf.load, 14
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %bf.clear)
  %cmp3 = icmp ugt i8 %bf.clear, 5
  br i1 %cmp3, label %if.then.return_crit_edge, label %if.then.if.end10_crit_edge

if.then.if.end10_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.else:                                          ; preds = %entry
  %nexthdr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 3
  %7 = ptrtoint ptr %nexthdr to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %nexthdr, align 2
  %call7 = tail call zeroext i1 @ipv6_ext_hdr(i8 noundef zeroext %8) #11
  br i1 %call7, label %if.else.return_crit_edge, label %if.else.if.end10_crit_edge

if.else.if.end10_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.else.return_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end10:                                         ; preds = %if.else.if.end10_crit_edge, %if.then.if.end10_crit_edge
  br label %return

return:                                           ; preds = %if.end10, %if.else.return_crit_edge, %if.then.return_crit_edge
  %retval.0 = phi i1 [ true, %if.end10 ], [ false, %if.then.return_crit_edge ], [ false, %if.else.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx5e_xfrm_advance_esn_state(ptr noundef readonly %x) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %x, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %offload_handle.i = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 41, i32 3
  %0 = ptrtoint ptr %offload_handle.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %offload_handle.i, align 4
  %2 = inttoptr i32 %1 to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool1.not.i = icmp eq i32 %1, 0
  br i1 %tobool1.not.i, label %if.end.i.cleanup_crit_edge, label %if.end3.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end3.i:                                        ; preds = %if.end.i
  %x4.i = getelementptr inbounds %struct.mlx5e_ipsec_sa_entry, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %x4.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %x4.i, align 4
  %cmp.not.i = icmp eq ptr %4, %x
  br i1 %cmp.not.i, label %if.end3.i.if.end_crit_edge, label %do.end.i, !prof !101

if.end3.i.if.end_crit_edge:                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end.i:                                         ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 56, i32 noundef 9, ptr noundef null) #11
  br label %if.end

if.end:                                           ; preds = %do.end.i, %if.end3.i.if.end_crit_edge
  %5 = ptrtoint ptr %x4.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %x4.i, align 4
  %flags.i = getelementptr inbounds %struct.xfrm_state, ptr %6, i32 0, i32 14, i32 6
  %7 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %flags.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %8)
  %tobool.not.i57 = icmp sgt i8 %8, -1
  br i1 %tobool.not.i57, label %if.then.i, label %if.end.i59

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %trigger.i = getelementptr inbounds %struct.mlx5e_ipsec_sa_entry, ptr %2, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %trigger.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load.i = load i8, ptr %trigger.i, align 4
  %bf.clear.i = and i8 %bf.load.i, 127
  store i8 %bf.clear.i, ptr %trigger.i, align 4
  br label %cleanup

if.end.i59:                                       ; preds = %if.end
  %replay_esn2.i = getelementptr inbounds %struct.xfrm_state, ptr %6, i32 0, i32 30
  %10 = ptrtoint ptr %replay_esn2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %replay_esn2.i, align 8
  %seq.i = getelementptr inbounds %struct.xfrm_replay_state_esn, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %seq.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %seq.i, align 4
  %replay_window.i = getelementptr inbounds %struct.xfrm_replay_state_esn, ptr %11, i32 0, i32 5
  %14 = ptrtoint ptr %replay_window.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %replay_window.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp.not.i58 = icmp ult i32 %13, %15
  %sub.i = add i32 %13, 1
  %add.i = sub i32 %sub.i, %15
  %seq_bottom.0.i = select i1 %cmp.not.i58, i32 0, i32 %add.i
  %esn_state8.i = getelementptr inbounds %struct.mlx5e_ipsec_sa_entry, ptr %2, i32 0, i32 1
  %overlap9.i = getelementptr inbounds %struct.mlx5e_ipsec_sa_entry, ptr %2, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %overlap9.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load10.i = load i8, ptr %overlap9.i, align 4
  %call.i = tail call i32 @xfrm_replay_seqhi(ptr noundef %6, i32 noundef %seq_bottom.0.i) #11
  %17 = ptrtoint ptr %esn_state8.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call.i, ptr %esn_state8.i, align 4
  %18 = ptrtoint ptr %overlap9.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load19.i = load i8, ptr %overlap9.i, align 4
  %bf.set21.i = or i8 %bf.load19.i, -128
  store i8 %bf.set21.i, ptr %overlap9.i, align 4
  %19 = and i8 %bf.load10.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool23.not.i = icmp eq i8 %19, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %seq_bottom.0.i)
  %cmp24.i = icmp slt i32 %seq_bottom.0.i, 0
  %20 = or i1 %tobool23.not.i, %cmp24.i
  br i1 %20, label %if.else.i, label %if.then28.i, !prof !101

if.then28.i:                                      ; preds = %if.end.i59
  call void @__sanitizer_cov_trace_pc() #13
  %inc.i = add i32 %call.i, 1
  %21 = ptrtoint ptr %esn_state8.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %inc.i, ptr %esn_state8.i, align 4
  %bf.clear32.i = and i8 %bf.set21.i, -65
  br label %if.end4

if.else.i:                                        ; preds = %if.end.i59
  %spec.select.i = and i1 %tobool23.not.i, %cmp24.i
  br i1 %spec.select.i, label %if.then45.i, label %if.else.i.cleanup_crit_edge, !prof !100

if.else.i.cleanup_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then45.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  %bf.set50.i = or i8 %bf.load19.i, -64
  br label %if.end4

if.end4:                                          ; preds = %if.then45.i, %if.then28.i
  %storemerge = phi i8 [ %bf.clear32.i, %if.then28.i ], [ %bf.set50.i, %if.then45.i ]
  %22 = ptrtoint ptr %overlap9.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %storemerge, ptr %overlap9.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %23 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %23, i32 noundef 2848, i32 noundef 192) #14
  %tobool6.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool6.not, label %if.end4.cleanup_crit_edge, label %if.end8

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %attrs = getelementptr inbounds %struct.mlx5e_ipsec_modify_state_work, ptr %call7.i.i, i32 0, i32 1
  tail call fastcc void @mlx5e_ipsec_build_accel_xfrm_attrs(ptr noundef nonnull %2, ptr noundef %attrs)
  %sa_entry9 = getelementptr inbounds %struct.mlx5e_ipsec_modify_state_work, ptr %call7.i.i, i32 0, i32 2
  %24 = ptrtoint ptr %sa_entry9 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %2, ptr %sa_entry9, align 8
  tail call void @__init_work(ptr noundef nonnull %call7.i.i, i32 noundef 0) #11
  %25 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -64, ptr %call7.i.i, align 8
  %lockdep_map = getelementptr inbounds %struct.work_struct, ptr %call7.i.i, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.37, ptr noundef nonnull @mlx5e_xfrm_advance_esn_state.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %entry13 = getelementptr inbounds %struct.work_struct, ptr %call7.i.i, i32 0, i32 1
  %26 = ptrtoint ptr %entry13 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %entry13, ptr %entry13, align 4
  %prev.i = getelementptr inbounds %struct.work_struct, ptr %call7.i.i, i32 0, i32 1, i32 1
  %27 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %entry13, ptr %prev.i, align 8
  %func = getelementptr inbounds %struct.work_struct, ptr %call7.i.i, i32 0, i32 2
  %28 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @_update_xfrm_state, ptr %func, align 4
  %ipsec = getelementptr inbounds %struct.mlx5e_ipsec_sa_entry, ptr %2, i32 0, i32 4
  %29 = ptrtoint ptr %ipsec to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ipsec, align 4
  %wq = getelementptr inbounds %struct.mlx5e_ipsec, ptr %30, i32 0, i32 7
  %31 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %wq, align 8
  %call.i61 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %32, ptr noundef nonnull %call7.i.i) #11
  br i1 %call.i61, label %if.end8.cleanup_crit_edge, label %do.end29, !prof !101

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end29:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 519, i32 noundef 9, ptr noundef null) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end29, %if.end8.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.else.i.cleanup_crit_edge, %if.then.i, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @mlx5e_ipsec_build_accel_xfrm_attrs(ptr nocapture noundef readonly %sa_entry, ptr nocapture noundef %attrs) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %x1 = getelementptr inbounds %struct.mlx5e_ipsec_sa_entry, ptr %sa_entry, i32 0, i32 3
  %0 = ptrtoint ptr %x1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %x1, align 4
  %keymat = getelementptr inbounds %struct.mlx5_accel_esp_xfrm_attrs, ptr %attrs, i32 0, i32 10
  %2 = call ptr @memset(ptr %attrs, i32 0, i32 136)
  %aead2 = getelementptr inbounds %struct.xfrm_state, ptr %1, i32 0, i32 19
  %3 = ptrtoint ptr %aead2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %aead2, align 4
  %alg_key_len = getelementptr inbounds %struct.xfrm_algo_aead, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %alg_key_len to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %alg_key_len, align 4
  %add = add i32 %6, 7
  %div74 = lshr i32 %add, 3
  %sub = add nsw i32 %div74, -4
  %aes_key = getelementptr inbounds %struct.mlx5_accel_esp_xfrm_attrs, ptr %attrs, i32 0, i32 10, i32 0, i32 5
  %alg_key = getelementptr inbounds %struct.xfrm_algo_aead, ptr %4, i32 0, i32 3
  %7 = call ptr @memcpy(ptr %aes_key, ptr %alg_key, i32 %sub)
  %mul = shl i32 %sub, 3
  %key_len5 = getelementptr inbounds %struct.mlx5_accel_esp_xfrm_attrs, ptr %attrs, i32 0, i32 10, i32 0, i32 4
  %8 = ptrtoint ptr %key_len5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %mul, ptr %key_len5, align 4
  %data = getelementptr inbounds %struct.xfrm_state, ptr %1, i32 0, i32 51
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data, align 8
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_aead, ptr %10, i32 0, i32 3, i32 3
  %11 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %__crt_alg.i.i, align 4
  %ivsize.i.i = getelementptr i8, ptr %12, i32 -104
  %13 = ptrtoint ptr %ivsize.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ivsize.i.i, align 8
  %salt = getelementptr inbounds %struct.crypto_aead, ptr %10, i32 1, i32 2, i32 44
  %15 = call ptr @memcpy(ptr %keymat, ptr %salt, i32 %14)
  %salt7 = getelementptr inbounds %struct.mlx5_accel_esp_xfrm_attrs, ptr %attrs, i32 0, i32 10, i32 0, i32 2
  %16 = load ptr, ptr %aead2, align 4
  %alg_key9 = getelementptr inbounds %struct.xfrm_algo_aead, ptr %16, i32 0, i32 3
  %add.ptr = getelementptr i8, ptr %alg_key9, i32 %sub
  %17 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %18 = load i32, ptr %add.ptr, align 1
  %19 = ptrtoint ptr %salt7 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %salt7, align 4
  %20 = load ptr, ptr %aead2, align 4
  %alg_icv_len = getelementptr inbounds %struct.xfrm_algo_aead, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %alg_icv_len to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %alg_icv_len, align 4
  %icv_len = getelementptr inbounds %struct.mlx5_accel_esp_xfrm_attrs, ptr %attrs, i32 0, i32 10, i32 0, i32 3
  %23 = ptrtoint ptr %icv_len to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %icv_len, align 8
  %trigger = getelementptr inbounds %struct.mlx5e_ipsec_sa_entry, ptr %sa_entry, i32 0, i32 1, i32 1
  %24 = ptrtoint ptr %trigger to i32
  call void @__asan_load1_noabort(i32 %24)
  %bf.load = load i8, ptr %trigger, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %entry.if.end21_crit_edge, label %if.then

entry.if.end21_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

if.then:                                          ; preds = %entry
  %esn_state = getelementptr inbounds %struct.mlx5e_ipsec_sa_entry, ptr %sa_entry, i32 0, i32 1
  %flags = getelementptr inbounds %struct.mlx5_accel_esp_xfrm_attrs, ptr %attrs, i32 0, i32 5
  %25 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %flags, align 4
  %or = or i32 %26, 2
  store i32 %or, ptr %flags, align 4
  %27 = ptrtoint ptr %esn_state to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %esn_state, align 4
  %esn13 = getelementptr inbounds %struct.mlx5_accel_esp_xfrm_attrs, ptr %attrs, i32 0, i32 1
  %29 = ptrtoint ptr %esn13 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %esn13, align 4
  %30 = ptrtoint ptr %trigger to i32
  call void @__asan_load1_noabort(i32 %30)
  %bf.load15 = load i8, ptr %trigger, align 4
  %31 = and i8 %bf.load15, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool17.not = icmp eq i8 %31, 0
  br i1 %tobool17.not, label %if.then.if.end21_crit_edge, label %if.then18

if.then.if.end21_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

if.then18:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %or20 = or i32 %26, 6
  %32 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %or20, ptr %flags, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then18, %if.then.if.end21_crit_edge, %entry.if.end21_crit_edge
  %handle = getelementptr inbounds %struct.mlx5e_ipsec_sa_entry, ptr %sa_entry, i32 0, i32 2
  %33 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %handle, align 4
  %sa_handle = getelementptr inbounds %struct.mlx5_accel_esp_xfrm_attrs, ptr %attrs, i32 0, i32 6
  %35 = ptrtoint ptr %sa_handle to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %sa_handle, align 8
  %keymat_type = getelementptr inbounds %struct.mlx5_accel_esp_xfrm_attrs, ptr %attrs, i32 0, i32 9
  %36 = ptrtoint ptr %keymat_type to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 1, ptr %keymat_type, align 4
  %flags22 = getelementptr inbounds %struct.xfrm_state, ptr %1, i32 0, i32 41, i32 5
  %37 = ptrtoint ptr %flags22 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %flags22, align 4
  %39 = lshr i8 %38, 1
  %.lobit = and i8 %39, 1
  %40 = xor i8 %.lobit, 1
  %41 = zext i8 %40 to i32
  %42 = ptrtoint ptr %attrs to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %attrs, align 8
  %mode = getelementptr inbounds %struct.xfrm_state, ptr %1, i32 0, i32 14, i32 1
  %43 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %cmp = icmp eq i8 %44, 0
  %cond26 = zext i1 %cmp to i32
  %flags27 = getelementptr inbounds %struct.mlx5_accel_esp_xfrm_attrs, ptr %attrs, i32 0, i32 5
  %45 = ptrtoint ptr %flags27 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %flags27, align 4
  %or28 = or i32 %46, %cond26
  store i32 %or28, ptr %flags27, align 4
  %id = getelementptr inbounds %struct.xfrm_state, ptr %1, i32 0, i32 7
  %spi = getelementptr inbounds %struct.xfrm_state, ptr %1, i32 0, i32 7, i32 1
  %47 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %spi, align 4
  %spi29 = getelementptr inbounds %struct.mlx5_accel_esp_xfrm_attrs, ptr %attrs, i32 0, i32 2
  %49 = ptrtoint ptr %spi29 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %spi29, align 8
  %saddr = getelementptr inbounds %struct.mlx5_accel_esp_xfrm_attrs, ptr %attrs, i32 0, i32 11
  %saddr31 = getelementptr inbounds %struct.xfrm_state, ptr %1, i32 0, i32 14, i32 8
  %50 = call ptr @memcpy(ptr %saddr, ptr %saddr31, i32 16)
  %daddr = getelementptr inbounds %struct.mlx5_accel_esp_xfrm_attrs, ptr %attrs, i32 0, i32 12
  %51 = call ptr @memcpy(ptr %daddr, ptr %id, i32 16)
  %family = getelementptr inbounds %struct.xfrm_state, ptr %1, i32 0, i32 14, i32 7
  %52 = ptrtoint ptr %family to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %family, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %53)
  %cmp38 = icmp ne i16 %53, 2
  %conv40 = zext i1 %cmp38 to i8
  %is_ipv6 = getelementptr inbounds %struct.mlx5_accel_esp_xfrm_attrs, ptr %attrs, i32 0, i32 13
  %54 = ptrtoint ptr %is_ipv6 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %conv40, ptr %is_ipv6, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_accel_esp_create_xfrm(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_accel_esp_create_hw_context(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlx5e_ipsec_sadb_rx_add(ptr noundef %sa_entry, i32 noundef %handle) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ipsec1 = getelementptr inbounds %struct.mlx5e_ipsec_sa_entry, ptr %sa_entry, i32 0, i32 4
  %0 = ptrtoint ptr %ipsec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ipsec1, align 4
  %2 = tail call i32 @llvm.read_register.i32(metadata !88) #11
  %and.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !98
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 696, ptr noundef nonnull @.str.17) #11
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call = tail call i32 @rcu_read_lock_any_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true4

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b65 = load i1, ptr @mlx5e_ipsec_sadb_rx_add.__warned, align 1
  br i1 %.b65, label %land.lhs.true4.do.end_crit_edge, label %if.then

land.lhs.true4.do.end_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @mlx5e_ipsec_sadb_rx_add.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 86, ptr noundef nonnull @.str.1) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true4.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %mul.i.i = mul i32 %handle, 1640531527
  %shr.i = lshr i32 %mul.i.i, 22
  %arrayidx = getelementptr %struct.mlx5e_ipsec, ptr %1, i32 0, i32 1, i32 %shr.i
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %do.end
  %_sa_entry.0.in = phi ptr [ %arrayidx, %do.end ], [ %_sa_entry.0, %for.body.for.cond_crit_edge ]
  %6 = ptrtoint ptr %_sa_entry.0.in to i32
  call void @__asan_load4_noabort(i32 %6)
  %_sa_entry.0 = load volatile ptr, ptr %_sa_entry.0.in, align 4
  %tobool14.not = icmp eq ptr %_sa_entry.0, null
  br i1 %tobool14.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %handle15 = getelementptr inbounds %struct.mlx5e_ipsec_sa_entry, ptr %_sa_entry.0, i32 0, i32 2
  %7 = ptrtoint ptr %handle15 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %handle15, align 4
  %cmp = icmp eq i32 %8, %handle
  br i1 %cmp, label %if.then16, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond

if.then16:                                        ; preds = %for.body
  %call.i67 = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i67, label %if.then16.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i70

if.then16.rcu_read_unlock.exit_crit_edge:         ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true.i70:                                ; preds = %if.then16
  %call1.i68 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i68)
  %tobool.not.i69 = icmp eq i32 %call1.i68, 0
  br i1 %tobool.not.i69, label %land.lhs.true.i70.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i72

land.lhs.true.i70.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i70
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true2.i72:                               ; preds = %land.lhs.true.i70
  %.b4.i71 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i71, label %land.lhs.true2.i72.rcu_read_unlock.exit_crit_edge, label %if.then.i73

land.lhs.true2.i72.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i72
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

if.then.i73:                                      ; preds = %land.lhs.true2.i72
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 724, ptr noundef nonnull @.str.18) #11
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i73, %land.lhs.true2.i72.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i70.rcu_read_unlock.exit_crit_edge, %if.then16.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !102
  %9 = tail call i32 @llvm.read_register.i32(metadata !88) #11
  %and.i.i.i.i.i74 = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i74 to ptr
  %preempt_count.i.i.i.i75 = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i.i.i75 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i.i.i75, align 4
  %sub.i.i.i = add i32 %12, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i75, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  br label %cleanup

for.end:                                          ; preds = %for.cond
  %call.i76 = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i76, label %for.end.rcu_read_unlock.exit86_crit_edge, label %land.lhs.true.i79

for.end.rcu_read_unlock.exit86_crit_edge:         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit86

land.lhs.true.i79:                                ; preds = %for.end
  %call1.i77 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i77)
  %tobool.not.i78 = icmp eq i32 %call1.i77, 0
  br i1 %tobool.not.i78, label %land.lhs.true.i79.rcu_read_unlock.exit86_crit_edge, label %land.lhs.true2.i81

land.lhs.true.i79.rcu_read_unlock.exit86_crit_edge: ; preds = %land.lhs.true.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit86

land.lhs.true2.i81:                               ; preds = %land.lhs.true.i79
  %.b4.i80 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i80, label %land.lhs.true2.i81.rcu_read_unlock.exit86_crit_edge, label %if.then.i82

land.lhs.true2.i81.rcu_read_unlock.exit86_crit_edge: ; preds = %land.lhs.true2.i81
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit86

if.then.i82:                                      ; preds = %land.lhs.true2.i81
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 724, ptr noundef nonnull @.str.18) #11
  br label %rcu_read_unlock.exit86

rcu_read_unlock.exit86:                           ; preds = %if.then.i82, %land.lhs.true2.i81.rcu_read_unlock.exit86_crit_edge, %land.lhs.true.i79.rcu_read_unlock.exit86_crit_edge, %for.end.rcu_read_unlock.exit86_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !102
  %13 = tail call i32 @llvm.read_register.i32(metadata !88) #11
  %and.i.i.i.i.i83 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i.i.i83 to ptr
  %preempt_count.i.i.i.i84 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i.i.i84 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i.i.i84, align 4
  %sub.i.i.i85 = add i32 %16, -1
  store volatile i32 %sub.i.i.i85, ptr %preempt_count.i.i.i.i84, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  %sadb_rx_lock = getelementptr inbounds %struct.mlx5e_ipsec, ptr %1, i32 0, i32 3
  %call38 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %sadb_rx_lock) #11
  %handle43 = getelementptr inbounds %struct.mlx5e_ipsec_sa_entry, ptr %sa_entry, i32 0, i32 2
  %17 = ptrtoint ptr %handle43 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %handle, ptr %handle43, align 4
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx, align 4
  %20 = ptrtoint ptr %sa_entry to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %sa_entry, align 4
  %pprev.i = getelementptr inbounds %struct.hlist_node, ptr %sa_entry, i32 0, i32 1
  %21 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %arrayidx, ptr %pprev.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !105
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %sa_entry, ptr %arrayidx, align 4
  %tobool.not.i89 = icmp eq ptr %19, null
  br i1 %tobool.not.i89, label %rcu_read_unlock.exit86.hlist_add_head_rcu.exit_crit_edge, label %do.body49.i

rcu_read_unlock.exit86.hlist_add_head_rcu.exit_crit_edge: ; preds = %rcu_read_unlock.exit86
  call void @__sanitizer_cov_trace_pc() #13
  br label %hlist_add_head_rcu.exit

do.body49.i:                                      ; preds = %rcu_read_unlock.exit86
  call void @__sanitizer_cov_trace_pc() #13
  %pprev51.i = getelementptr inbounds %struct.hlist_node, ptr %19, i32 0, i32 1
  %23 = ptrtoint ptr %pprev51.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %sa_entry, ptr %pprev51.i, align 4
  br label %hlist_add_head_rcu.exit

hlist_add_head_rcu.exit:                          ; preds = %do.body49.i, %rcu_read_unlock.exit86.hlist_add_head_rcu.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %sadb_rx_lock, i32 noundef %call38) #11
  br label %cleanup

cleanup:                                          ; preds = %hlist_add_head_rcu.exit, %rcu_read_unlock.exit
  %retval.0 = phi i32 [ -17, %rcu_read_unlock.exit ], [ 0, %hlist_add_head_rcu.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_ipsec_set_iv_esn(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_ipsec_set_iv(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlx5e_xfrm_fs_del_rule(ptr noundef %priv, ptr noundef %sa_entry) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
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
  br i1 %tobool.not.i, label %entry.return_crit_edge, label %if.end.i

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end.i:                                         ; preds = %entry
  %add.ptr6.i = getelementptr i32, ptr %3, i32 45
  %7 = ptrtoint ptr %add.ptr6.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %add.ptr6.i, align 4
  %9 = and i32 %8, 7936
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool9.not.i = icmp eq i32 %9, 0
  br i1 %tobool9.not.i, label %if.end.i.return_crit_edge, label %if.end11.i

if.end.i.return_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end11.i:                                       ; preds = %if.end.i
  %add.ptr17.i = getelementptr i64, ptr %3, i32 16
  %10 = ptrtoint ptr %add.ptr17.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %add.ptr17.i, align 8
  %and18.i = and i64 %11, 524288
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and18.i)
  %tobool19.not.i = icmp eq i64 %and18.i, 0
  br i1 %tobool19.not.i, label %if.end11.i.return_crit_edge, label %if.end21.i

if.end11.i.return_crit_edge:                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

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
  br i1 %tobool30.not.i, label %if.end21.i.return_crit_edge, label %mlx5_is_ipsec_device.exit

if.end21.i.return_crit_edge:                      ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

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
  br i1 %tobool39.i.not, label %mlx5_is_ipsec_device.exit.return_crit_edge, label %if.end

mlx5_is_ipsec_device.exit.return_crit_edge:       ; preds = %mlx5_is_ipsec_device.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %mlx5_is_ipsec_device.exit
  call void @__sanitizer_cov_trace_pc() #13
  %xfrm = getelementptr inbounds %struct.mlx5e_ipsec_sa_entry, ptr %sa_entry, i32 0, i32 5
  %22 = ptrtoint ptr %xfrm to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %xfrm, align 4
  %attrs = getelementptr inbounds %struct.mlx5_accel_esp_xfrm, ptr %23, i32 0, i32 1
  %ipsec_rule = getelementptr inbounds %struct.mlx5e_ipsec_sa_entry, ptr %sa_entry, i32 0, i32 9
  tail call void @mlx5e_accel_ipsec_fs_del_rule(ptr noundef %priv, ptr noundef %attrs, ptr noundef %ipsec_rule) #11
  br label %return

return:                                           ; preds = %if.end, %mlx5_is_ipsec_device.exit.return_crit_edge, %if.end21.i.return_crit_edge, %if.end11.i.return_crit_edge, %if.end.i.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_accel_esp_free_hw_context(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_accel_esp_destroy_xfrm(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfrm_replay_seqhi(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_accel_ipsec_fs_add_rule(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_accel_ipsec_fs_del_rule(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ipv6_ext_hdr(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @_update_xfrm_state(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sa_entry1 = getelementptr inbounds %struct.mlx5e_ipsec_modify_state_work, ptr %work, i32 0, i32 2
  %0 = ptrtoint ptr %sa_entry1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sa_entry1, align 8
  %xfrm = getelementptr inbounds %struct.mlx5e_ipsec_sa_entry, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %xfrm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %xfrm, align 4
  %attrs = getelementptr inbounds %struct.mlx5e_ipsec_modify_state_work, ptr %work, i32 0, i32 1
  %call = tail call i32 @mlx5_accel_esp_modify_xfrm(ptr noundef %3, ptr noundef %attrs) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %ipsec = getelementptr inbounds %struct.mlx5e_ipsec_sa_entry, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %ipsec to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ipsec, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %netdev = getelementptr inbounds %struct.mlx5e_priv, ptr %7, i32 0, i32 22
  %8 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %netdev, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %9, ptr noundef nonnull @.str.4) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @kfree(ptr noundef %work) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_accel_esp_modify_xfrm(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind readonly }
attributes #9 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { cold nounwind }
attributes #16 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !8, !9, !11, !12, !14, !16, !17, !19, !20, !21, !23, !24, !25, !26, !27, !29, !30, !32, !33, !35, !36, !38, !39, !40, !42, !43, !45, !46, !48, !50, !52, !54, !56, !58, !60, !61, !62, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87}
!llvm.named.register.sp = !{!88}
!llvm.module.flags = !{!89, !90, !91, !92, !93, !94, !95, !96}
!llvm.ident = !{!97}

!0 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_accel/ipsec.c", i32 67, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_accel/ipsec.c", i32 419, i32 3}
!6 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @mlx5e_ipsec_init.__UNIQUE_ID_ddebug652, !5, !"__UNIQUE_ID_ddebug652", i1 false, i1 false}
!9 = !{ptr @mlx5e_ipsec_init.__key, !10, !"__key", i1 false, i1 false}
!10 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_accel/ipsec.c", i32 428, i32 2}
!11 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_accel/ipsec.c", i32 433, i32 14}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_accel/ipsec.c", i32 442, i32 2}
!16 = !{ptr @mlx5e_ipsec_init.__UNIQUE_ID_ddebug653, !15, !"__UNIQUE_ID_ddebug653", i1 false, i1 false}
!17 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_accel/ipsec.c", i32 537, i32 3}
!19 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @mlx5e_ipsec_build_netdev.__UNIQUE_ID_ddebug654, !18, !"__UNIQUE_ID_ddebug654", i1 false, i1 false}
!21 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_accel/ipsec.c", i32 541, i32 2}
!23 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @mlx5e_ipsec_build_netdev._entry, !22, !"_entry", i1 false, i1 false}
!26 = !{ptr @mlx5e_ipsec_build_netdev._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_accel/ipsec.c", i32 547, i32 3}
!29 = !{ptr @mlx5e_ipsec_build_netdev.__UNIQUE_ID_ddebug655, !28, !"__UNIQUE_ID_ddebug655", i1 false, i1 false}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_accel/ipsec.c", i32 556, i32 3}
!32 = !{ptr @mlx5e_ipsec_build_netdev.__UNIQUE_ID_ddebug656, !31, !"__UNIQUE_ID_ddebug656", i1 false, i1 false}
!33 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_accel/ipsec.c", i32 563, i32 2}
!35 = !{ptr @mlx5e_ipsec_build_netdev.__UNIQUE_ID_ddebug657, !34, !"__UNIQUE_ID_ddebug657", i1 false, i1 false}
!36 = distinct !{null, !37, !"__warned", i1 false, i1 false}
!37 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!38 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!40 = distinct !{null, !41, !"__warned", i1 false, i1 false}
!41 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!42 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @xa_init_flags.__key, !44, !"__key", i1 false, i1 false}
!44 = !{!"../include/linux/xarray.h", i32 378, i32 2}
!45 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @mlx5e_ipsec_xfrmdev_ops, !47, !"mlx5e_ipsec_xfrmdev_ops", i1 false, i1 false}
!47 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_accel/ipsec.c", i32 522, i32 33}
!48 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_accel/ipsec.c", i32 218, i32 23}
!50 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_accel/ipsec.c", i32 222, i32 23}
!52 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_accel/ipsec.c", i32 226, i32 23}
!54 = !{ptr @.str.23, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_accel/ipsec.c", i32 232, i32 23}
!56 = !{ptr @.str.24, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_accel/ipsec.c", i32 237, i32 23}
!58 = !{ptr @.str.25, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_accel/ipsec.c", i32 242, i32 3}
!60 = !{ptr @.str.26, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @mlx5e_xfrm_validate_state._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @mlx5e_xfrm_validate_state._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.27, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_accel/ipsec.c", i32 246, i32 23}
!65 = !{ptr @.str.28, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_accel/ipsec.c", i32 250, i32 23}
!67 = !{ptr @.str.29, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_accel/ipsec.c", i32 254, i32 23}
!69 = !{ptr @.str.30, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_accel/ipsec.c", i32 258, i32 23}
!71 = !{ptr @.str.31, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_accel/ipsec.c", i32 263, i32 23}
!73 = !{ptr @.str.32, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_accel/ipsec.c", i32 267, i32 23}
!75 = !{ptr @.str.33, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_accel/ipsec.c", i32 271, i32 23}
!77 = !{ptr @.str.34, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_accel/ipsec.c", i32 274, i32 23}
!79 = !{ptr @.str.35, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_accel/ipsec.c", i32 275, i32 23}
!81 = !{ptr @.str.36, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_accel/ipsec.c", i32 281, i32 23}
!83 = distinct !{null, !84, !"__warned", i1 false, i1 false}
!84 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_accel/ipsec.c", i32 86, i32 2}
!85 = !{ptr @mlx5e_xfrm_advance_esn_state.__key, !86, !"__key", i1 false, i1 false}
!86 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_accel/ipsec.c", i32 518, i32 2}
!87 = !{ptr @.str.37, !86, !"<string literal>", i1 false, i1 false}
!88 = !{!"sp"}
!89 = !{i32 1, !"wchar_size", i32 2}
!90 = !{i32 1, !"min_enum_size", i32 4}
!91 = !{i32 8, !"branch-target-enforcement", i32 0}
!92 = !{i32 8, !"sign-return-address", i32 0}
!93 = !{i32 8, !"sign-return-address-all", i32 0}
!94 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!95 = !{i32 7, !"uwtable", i32 1}
!96 = !{i32 7, !"frame-pointer", i32 2}
!97 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!98 = !{i64 2149982550}
!99 = !{i64 2148199823, i64 2148199855, i64 2148199884, i64 2148199918, i64 2148199949, i64 2148199972}
!100 = !{!"branch_weights", i32 1, i32 2000}
!101 = !{!"branch_weights", i32 2000, i32 1}
!102 = !{i64 2149982816}
!103 = !{i64 2148756702, i64 2148756707, i64 2148756720, i64 2148756764, i64 2148756798, i64 2148756819}
!104 = !{!"auto-init"}
!105 = !{i64 2151565462}
