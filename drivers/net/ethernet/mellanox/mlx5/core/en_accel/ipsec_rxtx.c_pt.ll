; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlx5/core/en_accel/ipsec_rxtx.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlx5/core/en_accel/ipsec_rxtx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.xfrm_state = type { %struct.possible_net_t, %union.anon.140, %struct.hlist_node, %struct.hlist_node, %struct.hlist_node, %struct.refcount_struct, %struct.spinlock, %struct.xfrm_id, %struct.xfrm_selector, %struct.xfrm_mark, i32, i32, i32, %struct.xfrm_state_walk, %struct.anon.141, %struct.xfrm_lifetime_cfg, ptr, ptr, ptr, ptr, ptr, i16, i32, i32, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.xfrm_replay_state, ptr, %struct.xfrm_replay_state, ptr, i32, i32, i32, i32, %struct.timer_list, %struct.xfrm_stats, %struct.xfrm_lifetime_cur, %struct.hrtimer, %struct.xfrm_state_offload, i32, i64, %struct.page_frag, ptr, %struct.xfrm_mode, %struct.xfrm_mode, %struct.xfrm_mode, ptr, ptr, ptr }
%struct.possible_net_t = type { ptr }
%union.anon.140 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.xfrm_id = type { %union.xfrm_address_t, i32, i8 }
%union.xfrm_address_t = type { [4 x i32] }
%struct.xfrm_selector = type { %union.xfrm_address_t, %union.xfrm_address_t, i16, i16, i16, i16, i16, i8, i8, i8, i32, i32 }
%struct.xfrm_mark = type { i32, i32 }
%struct.xfrm_state_walk = type { %struct.list_head, i8, i8, i8, i32, ptr }
%struct.list_head = type { ptr, ptr }
%struct.anon.141 = type { i32, i8, i8, i8, i8, i8, i8, i16, %union.xfrm_address_t, i32, i32, i32, %struct.xfrm_mark }
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
%struct.xfrm_replay_state_esn = type { i32, i32, i32, i32, i32, i32, [0 x i32] }
%struct.sk_buff = type { %union.anon, %union.anon.143, %union.anon.144, [48 x i8], %union.anon.145, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.147, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.143 = type { ptr }
%union.anon.144 = type { i64 }
%union.anon.145 = type { %struct.anon.146 }
%struct.anon.146 = type { i32, ptr }
%union.anon.147 = type { %struct.anon.148 }
%struct.anon.148 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.149, i32, i32, i32, i16, i16, %union.anon.151, i32, %union.anon.152, %union.anon.153, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.149 = type { i32 }
%union.anon.151 = type { i32 }
%union.anon.152 = type { i32 }
%union.anon.153 = type { i16 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.anon.164 = type { i32, i32 }
%struct.mlx5e_accel_tx_ipsec_state = type { ptr, ptr, i32, i32 }
%struct.mlx5_wqe_inline_seg = type { i32, [0 x i32] }
%struct.xfrm_offload = type { %struct.anon.164, i32, i32, i8, i8 }
%struct.skb_ext = type { %struct.refcount_struct, [4 x i8], i8, [7 x i8], [0 x i8] }
%struct.sec_path = type { i32, i32, [6 x ptr], [1 x %struct.xfrm_offload] }
%struct.mlx5_wqe_eth_seg = type { i8, i8, i8, i8, i8, i8, i16, i32, %union.anon.166 }
%union.anon.166 = type { i32 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.27 }
%union.anon.27 = type { [4 x i32] }
%struct.mlx5e_priv = type { ptr, ptr, [8 x i32], %struct.mlx5e_dcbx_dp, i32, i32, %struct.mutex, [48 x i8], %struct.mlx5e_rq, %struct.mlx5e_channels, [2 x [8 x i32]], ptr, ptr, %struct.mlx5e_flow_steering, ptr, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.mlx5_nb, ptr, ptr, ptr, %struct.mlx5e_stats, ptr, [12 x i8], %struct.mlx5e_channel_stats, %struct.mlx5e_ptp_stats, i16, i16, i8, i8, i8, %struct.hwtstamp_config, i16, i16, %struct.notifier_block, %struct.notifier_block, i32, %struct.udp_tunnel_nic_info, %struct.mlx5e_dcbx, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mlx5e_xsk, %struct.mlx5e_scratchpad, %struct.mlx5e_htb, ptr, [16 x i8] }
%struct.mlx5e_dcbx_dp = type { [64 x i8], i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mlx5e_rq = type { %union.anon.190, %struct.anon.204, ptr, ptr, ptr, [48 x i8], %struct.mlx5e_cq, %struct.mlx5e_cq_decomp, %struct.mlx5e_page_cache, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.dim, ptr, ptr, [1 x i32], ptr, ptr, %struct.work_struct, %struct.mlx5_wq_ctrl, i32, i8, i32, ptr, i32, %struct.mlx5e_dma_info, [72 x i8], %struct.xdp_rxq_info, ptr, [124 x i8] }
%union.anon.190 = type { %struct.anon.197 }
%struct.anon.197 = type { %struct.mlx5_wq_ll, %struct.mlx5e_umr_wqe, ptr, ptr, i16, i16, i8, i8, i8, i8, ptr }
%struct.mlx5_wq_ll = type { %struct.mlx5_frag_buf_ctrl, ptr, ptr, i16, i16, i16 }
%struct.mlx5_frag_buf_ctrl = type { ptr, i32, i16, i16, i8, i8, i8 }
%struct.mlx5e_umr_wqe = type { %struct.mlx5_wqe_ctrl_seg, %struct.mlx5_wqe_umr_ctrl_seg, %struct.mlx5_mkey_seg, %union.anon.199 }
%struct.mlx5_wqe_ctrl_seg = type { i32, i32, i8, [2 x i8], i8, %union.anon.165 }
%union.anon.165 = type { i32 }
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
%struct.mlx5e_params = type { i8, i8, i8, i16, %struct.anon.223, i8, i8, %struct.dim_cq_moder, %struct.dim_cq_moder, %struct.mlx5e_packet_merge_param, i8, i8, i8, i8, i8, i32, ptr, ptr, i32, i32, i8 }
%struct.anon.223 = type { i16, i8, [16 x %struct.netdev_tc_txq], %struct.anon.224 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.anon.224 = type { ptr }
%struct.dim_cq_moder = type { i16, i16, i16, i8 }
%struct.mlx5e_packet_merge_param = type { i32, i32, %struct.anon.225 }
%struct.anon.225 = type { i8, i8 }
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
%struct.mlx5_core_dev = type { ptr, i32, ptr, %struct.mutex, i32, i8, [64 x i8], %struct.mlx5_cmd, %struct.anon.170, ptr, i64, i32, ptr, i32, i32, %struct.mutex, i32, %struct.mlx5_priv, %struct.mlx5_profile, i32, %struct.mlx5e_resources, ptr, ptr, ptr, %struct.anon.172, ptr, ptr, %struct.mlx5_clock, ptr, ptr, ptr, i32, ptr }
%struct.mlx5_cmd = type { %struct.mlx5_nb, i32, ptr, i32, i32, ptr, i32, i16, i8, i8, i32, i32, ptr, %struct.spinlock, %struct.spinlock, i8, i32, [32 x i8], ptr, %struct.semaphore, %struct.semaphore, i32, i16, [32 x ptr], ptr, %struct.mlx5_cmd_debug, [5 x %struct.cmd_msg_cache], i32, ptr }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.mlx5_cmd_debug = type { ptr, ptr, ptr, i8, i16, i16 }
%struct.cmd_msg_cache = type { %struct.spinlock, %struct.list_head, i32, i32 }
%struct.anon.170 = type { [38 x ptr], [20 x i32], [3 x [18 x i32]], [64 x i32], [18 x i32], i8 }
%struct.mlx5_priv = type { ptr, ptr, %struct.mlx5_nb, ptr, %struct.xarray, i32, %struct.atomic_t, %struct.list_head, i32, i32, %struct.mlx5_core_health, %struct.list_head, ptr, ptr, ptr, ptr, %struct.mutex, i32, %struct.mutex, %struct.list_head, ptr, %struct.list_head, %struct.spinlock, ptr, i32, ptr, ptr, ptr, ptr, %struct.mlx5_core_sriov, ptr, i32, ptr, ptr, %struct.mlx5_core_roce, %struct.mlx5_fc_stats, %struct.mlx5_rl_table, ptr, %struct.mlx5_bfreg_data, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
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
%struct.mlx5_profile = type { i64, i8, [23 x %struct.anon.171] }
%struct.anon.171 = type { i32, i32 }
%struct.mlx5e_resources = type { %struct.mlx5e_hw_objs, %struct.devlink_port, ptr }
%struct.mlx5e_hw_objs = type { i32, %struct.mlx5_td, i32, %struct.mlx5_sq_bfreg }
%struct.mlx5_td = type { %struct.mutex, %struct.list_head, i32 }
%struct.mlx5_sq_bfreg = type { ptr, ptr, i8, i32, i32 }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.129 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.129 = type { %struct.devlink_port_pci_vf_attrs }
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
%struct.mlx5e_ipsec = type { ptr, [1024 x %struct.hlist_head], i8, %struct.spinlock, %struct.ida, %struct.mlx5e_ipsec_sw_stats, %struct.mlx5e_ipsec_stats, ptr, ptr, ptr }
%struct.mlx5e_ipsec_sw_stats = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.mlx5e_ipsec_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.mlx5e_ipsec_sa_entry = type { %struct.hlist_node, %struct.mlx5e_ipsec_esn_state, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.mlx5e_ipsec_rule }
%struct.mlx5e_ipsec_esn_state = type { i32, i8 }
%struct.mlx5e_ipsec_rule = type { ptr, ptr }
%struct.crypto_aead = type { i32, i32, [120 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon.227, ptr, ptr, ptr, ptr, %union.anon.228, [120 x i8] }
%union.anon.227 = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%union.anon.228 = type { %struct.crypto_istat_akcipher }
%struct.crypto_istat_akcipher = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.tcphdr = type { i16, i16, i32, i32, i16, i16, i16, i16 }
%struct.ip_esp_hdr = type { i32, i32, [0 x i8] }
%struct.mlx5e_ipsec_metadata = type { i8, %union.anon.226, i16 }
%union.anon.226 = type { [5 x i8] }

@mlx5e_ipsec_offload_handle_rx_skb.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"drivers/net/ethernet/mellanox/mlx5/core/en_accel/ipsec_rxtx.c\00", [34 x i8] zeroinitializer }, align 32
@mlx5e_ipsec_inverse_table = internal global { [2048 x i16], [1024 x i8] } zeroinitializer, align 32
@mlx5e_ipsec_set_metadata.__UNIQUE_ID_ddebug640 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.3, ptr @.str, ptr @.str.4, i8 0, i8 65, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mlx5_core\00", [22 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mlx5e_ipsec_set_metadata\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"   Offloading GSO packet outer L3 %u; L4 %u; Inner L3 %u; L4 %u\0A\00", [63 x i8] zeroinitializer }, align 32
@mlx5e_ipsec_set_metadata.__UNIQUE_ID_ddebug641 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.3, ptr @.str, ptr @.str.5, i8 0, i8 66, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"   Offloading GSO packet of len %u; mss %u; TCP sp %u dp %u seq 0x%x ESP seq 0x%x\0A\00", [45 x i8] zeroinitializer }, align 32
@mlx5e_ipsec_set_metadata.__UNIQUE_ID_ddebug642 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.3, ptr @.str, ptr @.str.6, i8 0, i8 69, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"   TX metadata syndrome %u proto %u mss_inv %04x seq %04x\0A\00", [37 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.7 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.8 = internal global [4 x i64] [i64 2, i64 8, i64 6, i64 17]
@__sancov_gen_cov_switch_values.9 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 6, i64 17]
@__sancov_gen_cov_switch_values.10 = internal global [4 x i64] [i64 2, i64 8, i64 6, i64 17]
@__sancov_gen_cov_switch_values.11 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.12 = internal global [5 x i64] [i64 3, i64 8, i64 17, i64 18, i64 23]
@__sancov_gen_cov_switch_values.13 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 531, i32 7 }
@___asan_gen_.17 = private unnamed_addr constant [26 x i8] c"mlx5e_ipsec_inverse_table\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 81, i32 15 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 258, i32 3 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 263, i32 3 }
@___asan_gen_.32 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.33 = private constant [65 x i8] c"../drivers/net/ethernet/mellanox/mlx5/core/en_accel/ipsec_rxtx.c\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 275, i32 2 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @.str, ptr @mlx5e_ipsec_inverse_table, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_ipsec_inverse_table to i32), i32 4096, i32 5120, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5e_ipsec_set_iv_esn(ptr noundef %skb, ptr nocapture noundef readonly %x, ptr nocapture noundef readonly %xo) local_unnamed_addr #0 align 64 {
entry:
  %seqno = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %replay_esn1 = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 30
  %0 = ptrtoint ptr %replay_esn1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %replay_esn1, align 8
  %oseq2 = getelementptr inbounds %struct.xfrm_replay_state_esn, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %oseq2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %oseq2, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %seqno) #7
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %4 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %end.i.i, align 4
  %gso_size.i = getelementptr inbounds %struct.skb_shared_info, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %gso_size.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %gso_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool.i = icmp ne i16 %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp = icmp sgt i32 %3, -1
  %or.cond = select i1 %tobool.i, i1 %cmp, i1 false
  br i1 %or.cond, label %land.rhs, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.rhs:                                         ; preds = %entry
  %gso_segs = getelementptr inbounds %struct.skb_shared_info, ptr %5, i32 0, i32 5
  %8 = ptrtoint ptr %gso_segs to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %gso_segs, align 2
  %conv = zext i16 %9 to i32
  %sub = sub nsw i32 %3, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %sub)
  %cmp4 = icmp ugt i32 %sub, -2147483648
  br i1 %cmp4, label %if.then, label %land.rhs.if.else_crit_edge, !prof !27

land.rhs.if.else_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  %hi = getelementptr inbounds %struct.anon.164, ptr %xo, i32 0, i32 1
  %10 = ptrtoint ptr %hi to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hi, align 4
  %sub7 = add i32 %11, -1
  br label %if.end

if.else:                                          ; preds = %land.rhs.if.else_crit_edge, %entry.if.else_crit_edge
  %hi9 = getelementptr inbounds %struct.anon.164, ptr %xo, i32 0, i32 1
  %12 = ptrtoint ptr %hi9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %hi9, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %seq_hi.0 = phi i32 [ %sub7, %if.then ], [ %13, %if.else ]
  %14 = ptrtoint ptr %xo to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %xo, align 4
  %conv11 = zext i32 %15 to i64
  %conv12 = zext i32 %seq_hi.0 to i64
  %shl = shl nuw i64 %conv12, 32
  %add = or i64 %shl, %conv11
  %16 = ptrtoint ptr %seqno to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %add, ptr %seqno, align 8
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %17 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %head.i.i, align 8
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %19 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i = zext i16 %20 to i32
  %add.ptr.i.i = getelementptr i8, ptr %18, i32 %conv.i.i
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %21 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %22 to i32
  %sub.ptr.sub.i = sub i32 8, %sub.ptr.rhs.cast.i
  %add14 = add i32 %sub.ptr.sub.i, %sub.ptr.lhs.cast.i
  %call15 = call i32 @skb_store_bits(ptr noundef %skb, i32 noundef %add14, ptr noundef nonnull %seqno, i32 noundef 8) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %seqno) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_store_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5e_ipsec_set_iv(ptr noundef %skb, ptr nocapture noundef readnone %x, ptr nocapture noundef readonly %xo) local_unnamed_addr #0 align 64 {
entry:
  %seqno = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %seqno) #7
  %0 = ptrtoint ptr %xo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %xo, align 4
  %conv = zext i32 %1 to i64
  %hi = getelementptr inbounds %struct.anon.164, ptr %xo, i32 0, i32 1
  %2 = ptrtoint ptr %hi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hi, align 4
  %conv2 = zext i32 %3 to i64
  %shl = shl nuw i64 %conv2, 32
  %add = or i64 %shl, %conv
  %4 = ptrtoint ptr %seqno to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %add, ptr %seqno, align 8
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %5 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %head.i.i, align 8
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %7 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i = zext i16 %8 to i32
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 %conv.i.i
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %9 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %10 to i32
  %sub.ptr.sub.i = sub i32 8, %sub.ptr.rhs.cast.i
  %add3 = add i32 %sub.ptr.sub.i, %sub.ptr.lhs.cast.i
  %call4 = call i32 @skb_store_bits(ptr noundef %skb, i32 noundef %add3, ptr noundef nonnull %seqno, i32 noundef 8) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %seqno) #7
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5e_ipsec_handle_tx_wqe(ptr nocapture noundef readnone %wqe, ptr nocapture noundef readonly %ipsec_st, ptr nocapture noundef writeonly %inlseg) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tailen = getelementptr inbounds %struct.mlx5e_accel_tx_ipsec_state, ptr %ipsec_st, i32 0, i32 2
  %0 = ptrtoint ptr %tailen to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tailen, align 4
  %or = or i32 %1, -2147483648
  %2 = ptrtoint ptr %inlseg to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %or, ptr %inlseg, align 4
  %data = getelementptr inbounds %struct.mlx5_wqe_inline_seg, ptr %inlseg, i32 0, i32 1
  %plen = getelementptr inbounds %struct.mlx5e_accel_tx_ipsec_state, ptr %ipsec_st, i32 0, i32 3
  %3 = ptrtoint ptr %plen to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %plen, align 4
  %5 = ptrtoint ptr %ipsec_st to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ipsec_st, align 4
  %proto = getelementptr inbounds %struct.xfrm_offload, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %proto to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %proto, align 4
  %sub.i = add i32 %4, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp1.i = icmp sgt i32 %sub.i, 0
  br i1 %cmp1.i, label %entry.for.body.i_crit_edge, label %entry.esp_output_fill_trailer.exit_crit_edge

entry.esp_output_fill_trailer.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %esp_output_fill_trailer.exit

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.02.i = phi i32 [ %add.i, %for.body.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %add.i = add nuw nsw i32 %i.02.i, 1
  %conv.i = trunc i32 %add.i to i8
  %arrayidx.i = getelementptr i8, ptr %data, i32 %i.02.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv.i, ptr %arrayidx.i, align 1
  %exitcond.not.i = icmp eq i32 %add.i, %sub.i
  br i1 %exitcond.not.i, label %for.body.i.esp_output_fill_trailer.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.body.i.esp_output_fill_trailer.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %esp_output_fill_trailer.exit

esp_output_fill_trailer.exit:                     ; preds = %for.body.i.esp_output_fill_trailer.exit_crit_edge, %entry.esp_output_fill_trailer.exit_crit_edge
  %conv2.i = trunc i32 %sub.i to i8
  %arrayidx4.i = getelementptr i8, ptr %data, i32 %sub.i
  %10 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv2.i, ptr %arrayidx4.i, align 1
  %sub5.i = add i32 %4, -1
  %arrayidx6.i = getelementptr i8, ptr %data, i32 %sub5.i
  %11 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %8, ptr %arrayidx6.i, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @mlx5e_ipsec_tx_build_eseg(ptr nocapture noundef readonly %priv, ptr nocapture noundef readonly %skb, ptr nocapture noundef %eseg) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %active_extensions.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 13
  %0 = ptrtoint ptr %active_extensions.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %active_extensions.i.i.i.i, align 1
  %2 = and i8 %1, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.i.not.i.i.i = icmp eq i8 %2, 0
  br i1 %tobool.i.not.i.i.i, label %skb_sec_path.exit, label %skb_sec_path.exit.i

skb_sec_path.exit.i:                              ; preds = %entry
  %extensions.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 22
  %3 = ptrtoint ptr %extensions.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %extensions.i.i.i, align 8
  %arrayidx.i.i.i = getelementptr %struct.skb_ext, ptr %4, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx.i.i.i, align 1
  %conv.i.i.i = zext i8 %6 to i32
  %shl.i.i.i = shl nuw nsw i32 %conv.i.i.i, 3
  %add.ptr.i.i.i = getelementptr i8, ptr %4, i32 %shl.i.i.i
  %tobool.not.i = icmp eq ptr %add.ptr.i.i.i, null
  br i1 %tobool.not.i, label %skb_sec_path.exit.i.skb_sec_path.exit.thread_crit_edge, label %lor.lhs.false.i

skb_sec_path.exit.i.skb_sec_path.exit.thread_crit_edge: ; preds = %skb_sec_path.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_sec_path.exit.thread

lor.lhs.false.i:                                  ; preds = %skb_sec_path.exit.i
  %olen.i = getelementptr inbounds %struct.sec_path, ptr %add.ptr.i.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %olen.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %olen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool1.not.i = icmp eq i32 %8, 0
  br i1 %tobool1.not.i, label %lor.lhs.false.i.skb_sec_path.exit.thread_crit_edge, label %lor.lhs.false2.i

lor.lhs.false.i.skb_sec_path.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_sec_path.exit.thread

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %9 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %8)
  %cmp.not.i = icmp eq i32 %10, %8
  br i1 %cmp.not.i, label %if.end.i, label %lor.lhs.false2.i.skb_sec_path.exit.thread_crit_edge

lor.lhs.false2.i.skb_sec_path.exit.thread_crit_edge: ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_sec_path.exit.thread

if.end.i:                                         ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i = add i32 %8, -1
  %arrayidx.i = getelementptr %struct.sec_path, ptr %add.ptr.i.i.i, i32 0, i32 3, i32 %sub.i
  br label %skb_sec_path.exit.thread

skb_sec_path.exit:                                ; preds = %entry
  call void @__asan_load4_noabort(i32 0)
  %11 = load i32, ptr null, align 2147483648
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp.not = icmp eq i32 %11, 1
  br i1 %cmp.not, label %skb_sec_path.exit.xfrm_input_state.exit_crit_edge, label %skb_sec_path.exit.cleanup_crit_edge, !prof !28

skb_sec_path.exit.cleanup_crit_edge:              ; preds = %skb_sec_path.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

skb_sec_path.exit.xfrm_input_state.exit_crit_edge: ; preds = %skb_sec_path.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %xfrm_input_state.exit

skb_sec_path.exit.thread:                         ; preds = %if.end.i, %lor.lhs.false2.i.skb_sec_path.exit.thread_crit_edge, %lor.lhs.false.i.skb_sec_path.exit.thread_crit_edge, %skb_sec_path.exit.i.skb_sec_path.exit.thread_crit_edge
  %retval.0.i.ph = phi ptr [ null, %skb_sec_path.exit.i.skb_sec_path.exit.thread_crit_edge ], [ null, %lor.lhs.false.i.skb_sec_path.exit.thread_crit_edge ], [ null, %lor.lhs.false2.i.skb_sec_path.exit.thread_crit_edge ], [ %arrayidx.i, %if.end.i ]
  %12 = ptrtoint ptr %extensions.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %extensions.i.i.i, align 8
  %arrayidx.i.i = getelementptr %struct.skb_ext, ptr %13, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i = zext i8 %15 to i32
  %shl.i.i = shl nuw nsw i32 %conv.i.i, 3
  %add.ptr.i.i = getelementptr i8, ptr %13, i32 %shl.i.i
  %16 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %add.ptr.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp.not113 = icmp eq i32 %17, 1
  br i1 %cmp.not113, label %if.then.i.i.i, label %skb_sec_path.exit.thread.cleanup_crit_edge, !prof !28

skb_sec_path.exit.thread.cleanup_crit_edge:       ; preds = %skb_sec_path.exit.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i.i.i:                                    ; preds = %skb_sec_path.exit.thread
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %extensions.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %extensions.i.i.i, align 8
  %arrayidx.i.i.i88 = getelementptr %struct.skb_ext, ptr %19, i32 0, i32 1, i32 1
  %20 = ptrtoint ptr %arrayidx.i.i.i88 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx.i.i.i88, align 1
  %conv.i.i.i89 = zext i8 %21 to i32
  %shl.i.i.i90 = shl nuw nsw i32 %conv.i.i.i89, 3
  %add.ptr.i.i.i91 = getelementptr i8, ptr %19, i32 %shl.i.i.i90
  br label %xfrm_input_state.exit

xfrm_input_state.exit:                            ; preds = %if.then.i.i.i, %skb_sec_path.exit.xfrm_input_state.exit_crit_edge
  %retval.0.i110114117 = phi ptr [ %retval.0.i.ph, %if.then.i.i.i ], [ null, %skb_sec_path.exit.xfrm_input_state.exit_crit_edge ]
  %retval.0.i.i.i = phi ptr [ %add.ptr.i.i.i91, %if.then.i.i.i ], [ null, %skb_sec_path.exit.xfrm_input_state.exit_crit_edge ]
  %22 = ptrtoint ptr %retval.0.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %retval.0.i.i.i, align 4
  %sub.i92 = add i32 %23, -1
  %arrayidx.i93 = getelementptr %struct.sec_path, ptr %retval.0.i.i.i, i32 0, i32 2, i32 %sub.i92
  %24 = ptrtoint ptr %arrayidx.i93 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.i93, align 4
  %tobool4.not = icmp eq ptr %25, null
  br i1 %tobool4.not, label %xfrm_input_state.exit.cleanup_crit_edge, label %if.end14, !prof !27

xfrm_input_state.exit.cleanup_crit_edge:          ; preds = %xfrm_input_state.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end14:                                         ; preds = %xfrm_input_state.exit
  %offload_handle = getelementptr inbounds %struct.xfrm_state, ptr %25, i32 0, i32 41, i32 3
  %26 = ptrtoint ptr %offload_handle to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %offload_handle, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool15.not = icmp eq i32 %27, 0
  br i1 %tobool15.not, label %if.end14.cleanup_crit_edge, label %lor.rhs, !prof !27

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.rhs:                                          ; preds = %if.end14
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %28 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %protocol, align 8
  %30 = zext i16 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values)
  switch i16 %29, label %lor.rhs.cleanup_crit_edge [
    i16 -31011, label %lor.rhs.if.end29_crit_edge
    i16 2048, label %lor.rhs.if.end29_crit_edge119
  ]

lor.rhs.if.end29_crit_edge119:                    ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

lor.rhs.if.end29_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

lor.rhs.cleanup_crit_edge:                        ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end29:                                         ; preds = %lor.rhs.if.end29_crit_edge, %lor.rhs.if.end29_crit_edge119
  %mode = getelementptr inbounds %struct.xfrm_state, ptr %25, i32 0, i32 14, i32 1
  %31 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %mode, align 4
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %33 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %head.i.i.i, align 8
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %35 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i.i95 = zext i16 %36 to i32
  %add.ptr.i.i.i96 = getelementptr i8, ptr %34, i32 %conv.i.i.i95
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %37 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %add.ptr.i.i.i96 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %38 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %div.i = sdiv i32 %sub.ptr.sub.i.i, 2
  %conv.i = trunc i32 %div.i to i8
  %swp_outer_l3_offset.i = getelementptr inbounds %struct.mlx5_wqe_eth_seg, ptr %eseg, i32 0, i32 1
  %39 = ptrtoint ptr %swp_outer_l3_offset.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv.i, ptr %swp_outer_l3_offset.i, align 1
  %40 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %protocol, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -31011, i16 %41)
  %cmp.i = icmp eq i16 %41, -31011
  br i1 %cmp.i, label %if.then.i, label %if.end29.if.end.i97_crit_edge

if.end29.if.end.i97_crit_edge:                    ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i97

if.then.i:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  %swp_flags.i = getelementptr inbounds %struct.mlx5_wqe_eth_seg, ptr %eseg, i32 0, i32 5
  %42 = ptrtoint ptr %swp_flags.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %swp_flags.i, align 1
  %44 = or i8 %43, 16
  store i8 %44, ptr %swp_flags.i, align 1
  br label %if.end.i97

if.end.i97:                                       ; preds = %if.then.i, %if.end29.if.end.i97_crit_edge
  %45 = zext i8 %32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.7)
  switch i8 %32, label %if.end.i97.mlx5e_ipsec_set_swp.exit_crit_edge [
    i8 1, label %if.then8.i
    i8 0, label %if.end35.i
  ]

if.end.i97.mlx5e_ipsec_set_swp.exit_crit_edge:    ; preds = %if.end.i97
  call void @__sanitizer_cov_trace_pc() #9
  br label %mlx5e_ipsec_set_swp.exit

if.then8.i:                                       ; preds = %if.end.i97
  %46 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %head.i.i.i, align 8
  %inner_network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 16
  %48 = ptrtoint ptr %inner_network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %inner_network_header.i.i.i, align 4
  %conv.i.i106.i = zext i16 %49 to i32
  %add.ptr.i.i107.i = getelementptr i8, ptr %47, i32 %conv.i.i106.i
  %50 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i109.i = ptrtoint ptr %add.ptr.i.i107.i to i32
  %sub.ptr.rhs.cast.i110.i = ptrtoint ptr %51 to i32
  %sub.ptr.sub.i111.i = sub i32 %sub.ptr.lhs.cast.i109.i, %sub.ptr.rhs.cast.i110.i
  %div10.i = sdiv i32 %sub.ptr.sub.i111.i, 2
  %conv11.i = trunc i32 %div10.i to i8
  %swp_inner_l3_offset.i = getelementptr inbounds %struct.mlx5_wqe_eth_seg, ptr %eseg, i32 0, i32 3
  %52 = ptrtoint ptr %swp_inner_l3_offset.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %conv11.i, ptr %swp_inner_l3_offset.i, align 1
  %proto.i = getelementptr inbounds %struct.xfrm_offload, ptr %retval.0.i110114117, i32 0, i32 3
  %53 = ptrtoint ptr %proto.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %proto.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 41, i8 %54)
  %cmp13.i = icmp eq i8 %54, 41
  br i1 %cmp13.i, label %if.then15.i, label %if.then8.i.if.end20.i_crit_edge

if.then8.i.if.end20.i_crit_edge:                  ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20.i

if.then15.i:                                      ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #9
  %swp_flags16.i = getelementptr inbounds %struct.mlx5_wqe_eth_seg, ptr %eseg, i32 0, i32 5
  %55 = ptrtoint ptr %swp_flags16.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %swp_flags16.i, align 1
  %57 = or i8 %56, 1
  store i8 %57, ptr %swp_flags16.i, align 1
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.then15.i, %if.then8.i.if.end20.i_crit_edge
  %inner_ipproto.i = getelementptr inbounds %struct.xfrm_offload, ptr %retval.0.i110114117, i32 0, i32 4
  %58 = ptrtoint ptr %inner_ipproto.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %inner_ipproto.i, align 1
  %60 = zext i8 %59 to i64
  call void @__sanitizer_cov_trace_switch(i64 %60, ptr @__sancov_gen_cov_switch_values.8)
  switch i8 %59, label %if.end20.i.mlx5e_ipsec_set_swp.exit_crit_edge [
    i8 17, label %sw.bb.i
    i8 6, label %if.end20.i.sw.bb26.i_crit_edge
  ]

if.end20.i.sw.bb26.i_crit_edge:                   ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb26.i

if.end20.i.mlx5e_ipsec_set_swp.exit_crit_edge:    ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mlx5e_ipsec_set_swp.exit

sw.bb.i:                                          ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #9
  %swp_flags22.i = getelementptr inbounds %struct.mlx5_wqe_eth_seg, ptr %eseg, i32 0, i32 5
  %61 = ptrtoint ptr %swp_flags22.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %swp_flags22.i, align 1
  %63 = or i8 %62, 2
  store i8 %63, ptr %swp_flags22.i, align 1
  br label %sw.bb26.i

sw.bb26.i:                                        ; preds = %sw.bb.i, %if.end20.i.sw.bb26.i_crit_edge
  %64 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %head.i.i.i, align 8
  %inner_transport_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 15
  %66 = ptrtoint ptr %inner_transport_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %inner_transport_header.i.i.i, align 2
  %conv.i.i113.i = zext i16 %67 to i32
  %add.ptr.i.i114.i = getelementptr i8, ptr %65, i32 %conv.i.i113.i
  %68 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i116.i = ptrtoint ptr %add.ptr.i.i114.i to i32
  %sub.ptr.rhs.cast.i117.i = ptrtoint ptr %69 to i32
  %sub.ptr.sub.i118.i = sub i32 %sub.ptr.lhs.cast.i116.i, %sub.ptr.rhs.cast.i117.i
  %div28.i = sdiv i32 %sub.ptr.sub.i118.i, 2
  %conv29.i = trunc i32 %div28.i to i8
  %swp_inner_l4_offset.i = getelementptr inbounds %struct.mlx5_wqe_eth_seg, ptr %eseg, i32 0, i32 2
  %70 = ptrtoint ptr %swp_inner_l4_offset.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %conv29.i, ptr %swp_inner_l4_offset.i, align 2
  br label %mlx5e_ipsec_set_swp.exit

if.end35.i:                                       ; preds = %if.end.i97
  %inner_ipproto36.i = getelementptr inbounds %struct.xfrm_offload, ptr %retval.0.i110114117, i32 0, i32 4
  %71 = ptrtoint ptr %inner_ipproto36.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %inner_ipproto36.i, align 1
  %73 = zext i8 %72 to i64
  call void @__sanitizer_cov_trace_switch(i64 %73, ptr @__sancov_gen_cov_switch_values.9)
  switch i8 %72, label %if.end35.i.mlx5e_ipsec_set_swp.exit_crit_edge [
    i8 0, label %if.then37.i
    i8 17, label %sw.bb53.i
    i8 6, label %if.end35.i.sw.bb58.i_crit_edge
  ]

if.end35.i.sw.bb58.i_crit_edge:                   ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb58.i

if.end35.i.mlx5e_ipsec_set_swp.exit_crit_edge:    ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mlx5e_ipsec_set_swp.exit

if.then37.i:                                      ; preds = %if.end35.i
  %proto38.i = getelementptr inbounds %struct.xfrm_offload, ptr %retval.0.i110114117, i32 0, i32 3
  %74 = ptrtoint ptr %proto38.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %proto38.i, align 4
  %76 = zext i8 %75 to i64
  call void @__sanitizer_cov_trace_switch(i64 %76, ptr @__sancov_gen_cov_switch_values.10)
  switch i8 %75, label %if.then37.i.mlx5e_ipsec_set_swp.exit_crit_edge [
    i8 17, label %sw.bb40.i
    i8 6, label %if.then37.i.sw.bb45.i_crit_edge
  ]

if.then37.i.sw.bb45.i_crit_edge:                  ; preds = %if.then37.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb45.i

if.then37.i.mlx5e_ipsec_set_swp.exit_crit_edge:   ; preds = %if.then37.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mlx5e_ipsec_set_swp.exit

sw.bb40.i:                                        ; preds = %if.then37.i
  call void @__sanitizer_cov_trace_pc() #9
  %swp_flags41.i = getelementptr inbounds %struct.mlx5_wqe_eth_seg, ptr %eseg, i32 0, i32 5
  %77 = ptrtoint ptr %swp_flags41.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %swp_flags41.i, align 1
  %79 = or i8 %78, 32
  store i8 %79, ptr %swp_flags41.i, align 1
  br label %sw.bb45.i

sw.bb45.i:                                        ; preds = %sw.bb40.i, %if.then37.i.sw.bb45.i_crit_edge
  %80 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %head.i.i.i, align 8
  %inner_transport_header.i.i120.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 15
  %82 = ptrtoint ptr %inner_transport_header.i.i120.i to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %inner_transport_header.i.i120.i, align 2
  %conv.i.i121.i = zext i16 %83 to i32
  %add.ptr.i.i122.i = getelementptr i8, ptr %81, i32 %conv.i.i121.i
  %84 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i124.i = ptrtoint ptr %add.ptr.i.i122.i to i32
  %sub.ptr.rhs.cast.i125.i = ptrtoint ptr %85 to i32
  %sub.ptr.sub.i126.i = sub i32 %sub.ptr.lhs.cast.i124.i, %sub.ptr.rhs.cast.i125.i
  %div47.i = sdiv i32 %sub.ptr.sub.i126.i, 2
  %conv48.i = trunc i32 %div47.i to i8
  %86 = ptrtoint ptr %eseg to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %conv48.i, ptr %eseg, align 4
  br label %mlx5e_ipsec_set_swp.exit

sw.bb53.i:                                        ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #9
  %swp_flags54.i = getelementptr inbounds %struct.mlx5_wqe_eth_seg, ptr %eseg, i32 0, i32 5
  %87 = ptrtoint ptr %swp_flags54.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %swp_flags54.i, align 1
  %89 = or i8 %88, 2
  store i8 %89, ptr %swp_flags54.i, align 1
  br label %sw.bb58.i

sw.bb58.i:                                        ; preds = %sw.bb53.i, %if.end35.i.sw.bb58.i_crit_edge
  %90 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %head.i.i.i, align 8
  %inner_network_header.i.i128.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 16
  %92 = ptrtoint ptr %inner_network_header.i.i128.i to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %inner_network_header.i.i128.i, align 4
  %conv.i.i129.i = zext i16 %93 to i32
  %add.ptr.i.i130.i = getelementptr i8, ptr %91, i32 %conv.i.i129.i
  %94 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i132.i = ptrtoint ptr %add.ptr.i.i130.i to i32
  %sub.ptr.rhs.cast.i133.i = ptrtoint ptr %95 to i32
  %sub.ptr.sub.i134.i = sub i32 %sub.ptr.lhs.cast.i132.i, %sub.ptr.rhs.cast.i133.i
  %div60.i = sdiv i32 %sub.ptr.sub.i134.i, 2
  %conv61.i = trunc i32 %div60.i to i8
  %swp_inner_l3_offset62.i = getelementptr inbounds %struct.mlx5_wqe_eth_seg, ptr %eseg, i32 0, i32 3
  %96 = ptrtoint ptr %swp_inner_l3_offset62.i to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %conv61.i, ptr %swp_inner_l3_offset62.i, align 1
  %97 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %98 = ptrtoint ptr %97 to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %97, align 8
  %conv63.i = zext i16 %99 to i32
  %100 = load ptr, ptr %head.i.i.i, align 8
  %add.ptr.i = getelementptr i8, ptr %100, i32 %conv63.i
  %101 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %101 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %div64.i = sdiv i32 %sub.ptr.sub.i, 2
  %conv65.i = trunc i32 %div64.i to i8
  %swp_inner_l4_offset66.i = getelementptr inbounds %struct.mlx5_wqe_eth_seg, ptr %eseg, i32 0, i32 2
  %102 = ptrtoint ptr %swp_inner_l4_offset66.i to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 %conv65.i, ptr %swp_inner_l4_offset66.i, align 2
  %103 = load ptr, ptr %head.i.i.i, align 8
  %104 = load i16, ptr %inner_network_header.i.i128.i, align 4
  %conv.i.i137.i = zext i16 %104 to i32
  %add.ptr.i.i138.i = getelementptr i8, ptr %103, i32 %conv.i.i137.i
  %105 = ptrtoint ptr %add.ptr.i.i138.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %bf.load.i = load i8, ptr %add.ptr.i.i138.i, align 4
  %bf.lshr.mask.i = and i8 %bf.load.i, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 96, i8 %bf.lshr.mask.i)
  %cmp69.i = icmp eq i8 %bf.lshr.mask.i, 96
  br i1 %cmp69.i, label %if.then71.i, label %sw.bb58.i.mlx5e_ipsec_set_swp.exit_crit_edge

sw.bb58.i.mlx5e_ipsec_set_swp.exit_crit_edge:     ; preds = %sw.bb58.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mlx5e_ipsec_set_swp.exit

if.then71.i:                                      ; preds = %sw.bb58.i
  call void @__sanitizer_cov_trace_pc() #9
  %swp_flags72.i = getelementptr inbounds %struct.mlx5_wqe_eth_seg, ptr %eseg, i32 0, i32 5
  %106 = ptrtoint ptr %swp_flags72.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %swp_flags72.i, align 1
  %108 = or i8 %107, 1
  store i8 %108, ptr %swp_flags72.i, align 1
  br label %mlx5e_ipsec_set_swp.exit

mlx5e_ipsec_set_swp.exit:                         ; preds = %if.then71.i, %sw.bb58.i.mlx5e_ipsec_set_swp.exit_crit_edge, %sw.bb45.i, %if.then37.i.mlx5e_ipsec_set_swp.exit_crit_edge, %if.end35.i.mlx5e_ipsec_set_swp.exit_crit_edge, %sw.bb26.i, %if.end20.i.mlx5e_ipsec_set_swp.exit_crit_edge, %if.end.i97.mlx5e_ipsec_set_swp.exit_crit_edge
  %family = getelementptr inbounds %struct.xfrm_state, ptr %25, i32 0, i32 14, i32 7
  %109 = ptrtoint ptr %family to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %family, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %110)
  %cmp32 = icmp eq i16 %110, 2
  %111 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %head.i.i.i, align 8
  %113 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i98 = zext i16 %114 to i32
  %add.ptr.i99 = getelementptr i8, ptr %112, i32 %conv.i98
  %protocol35 = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i99, i32 0, i32 6
  %nexthdr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i99, i32 0, i32 3
  %cond.in.in = select i1 %cmp32, ptr %protocol35, ptr %nexthdr
  %115 = ptrtoint ptr %cond.in.in to i32
  call void @__asan_load1_noabort(i32 %115)
  %cond.in84 = load i8, ptr %cond.in.in, align 1
  %mdev = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %116 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %mdev, align 64
  %caps.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %117, i32 0, i32 8
  %118 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %caps.i, align 8
  %add.ptr.i104 = getelementptr i32, ptr %119, i32 35
  %120 = ptrtoint ptr %add.ptr.i104 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %add.ptr.i104, align 4
  %122 = and i32 %121, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %122)
  %tobool.not.i105 = icmp eq i32 %122, 0
  br i1 %tobool.not.i105, label %mlx5e_ipsec_set_swp.exit.cleanup_crit_edge, label %if.end.i106

mlx5e_ipsec_set_swp.exit.cleanup_crit_edge:       ; preds = %mlx5e_ipsec_set_swp.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i106:                                      ; preds = %mlx5e_ipsec_set_swp.exit
  %add.ptr6.i = getelementptr i32, ptr %119, i32 45
  %123 = ptrtoint ptr %add.ptr6.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %add.ptr6.i, align 4
  %125 = and i32 %124, 7936
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %125)
  %tobool9.not.i = icmp eq i32 %125, 0
  br i1 %tobool9.not.i, label %if.end.i106.cleanup_crit_edge, label %if.end11.i

if.end.i106.cleanup_crit_edge:                    ; preds = %if.end.i106
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end11.i:                                       ; preds = %if.end.i106
  %add.ptr17.i = getelementptr i64, ptr %119, i32 16
  %126 = ptrtoint ptr %add.ptr17.i to i32
  call void @__asan_load8_noabort(i32 %126)
  %127 = load i64, ptr %add.ptr17.i, align 8
  %and18.i = and i64 %127, 524288
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and18.i)
  %tobool19.not.i = icmp eq i64 %and18.i, 0
  br i1 %tobool19.not.i, label %if.end11.i.cleanup_crit_edge, label %if.end21.i

if.end11.i.cleanup_crit_edge:                     ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end21.i:                                       ; preds = %if.end11.i
  %arrayidx24.i = getelementptr %struct.mlx5_core_dev, ptr %117, i32 0, i32 8, i32 0, i32 21
  %128 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %arrayidx24.i, align 4
  %130 = ptrtoint ptr %129 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %129, align 4
  %132 = and i32 %131, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %132)
  %tobool30.not.i = icmp eq i32 %132, 0
  br i1 %tobool30.not.i, label %if.end21.i.cleanup_crit_edge, label %mlx5_is_ipsec_device.exit

if.end21.i.cleanup_crit_edge:                     ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

mlx5_is_ipsec_device.exit:                        ; preds = %if.end21.i
  %arrayidx33.i = getelementptr %struct.mlx5_core_dev, ptr %117, i32 0, i32 8, i32 0, i32 1
  %133 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %arrayidx33.i, align 4
  %add.ptr36.i = getelementptr i32, ptr %134, i32 1
  %135 = ptrtoint ptr %add.ptr36.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %add.ptr36.i, align 4
  %137 = and i32 %136, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %137)
  %tobool39.i.not = icmp eq i32 %137, 0
  br i1 %tobool39.i.not, label %mlx5_is_ipsec_device.exit.cleanup_crit_edge, label %if.then41

mlx5_is_ipsec_device.exit.cleanup_crit_edge:      ; preds = %mlx5_is_ipsec_device.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then41:                                        ; preds = %mlx5_is_ipsec_device.exit
  %flow_table_metadata = getelementptr inbounds %struct.mlx5_wqe_eth_seg, ptr %eseg, i32 0, i32 7
  %138 = ptrtoint ptr %flow_table_metadata to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %flow_table_metadata, align 4
  %or = or i32 %139, 1
  store i32 %or, ptr %flow_table_metadata, align 4
  %140 = getelementptr inbounds %struct.mlx5_wqe_eth_seg, ptr %eseg, i32 0, i32 8
  %141 = ptrtoint ptr %140 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %140, align 4
  %or42 = or i32 %142, 1073741824
  store i32 %or42, ptr %140, align 4
  %encap43 = getelementptr inbounds %struct.xfrm_state, ptr %25, i32 0, i32 24
  %143 = ptrtoint ptr %encap43 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %encap43, align 8
  %tobool44.not = icmp eq ptr %144, null
  br i1 %tobool44.not, label %if.then45, label %if.else

if.then45:                                        ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 50, i8 %cond.in84)
  %cmp47 = icmp eq i8 %cond.in84, 50
  %cond49 = select i1 %cmp47, i32 67108864, i32 134217728
  br label %cleanup.sink.split

if.else:                                          ; preds = %if.then41
  %145 = ptrtoint ptr %144 to i32
  call void @__asan_load2_noabort(i32 %145)
  %146 = load i16, ptr %144, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %146)
  %cmp52 = icmp eq i16 %146, 2
  br i1 %cmp52, label %if.then54, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then54:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 50, i8 %cond.in84)
  %cmp56 = icmp eq i8 %cond.in84, 50
  %cond58 = select i1 %cmp56, i32 201326592, i32 268435456
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then54, %if.then45
  %cond58.sink = phi i32 [ %cond58, %if.then54 ], [ %cond49, %if.then45 ]
  %or59 = or i32 %or42, %cond58.sink
  %147 = ptrtoint ptr %140 to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 %or59, ptr %140, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.else.cleanup_crit_edge, %mlx5_is_ipsec_device.exit.cleanup_crit_edge, %if.end21.i.cleanup_crit_edge, %if.end11.i.cleanup_crit_edge, %if.end.i106.cleanup_crit_edge, %mlx5e_ipsec_set_swp.exit.cleanup_crit_edge, %lor.rhs.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %xfrm_input_state.exit.cleanup_crit_edge, %skb_sec_path.exit.thread.cleanup_crit_edge, %skb_sec_path.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @mlx5e_ipsec_handle_tx_skb(ptr nocapture noundef readonly %netdev, ptr noundef %skb, ptr nocapture noundef writeonly %ipsec_st) local_unnamed_addr #0 align 64 {
entry:
  %plen.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %active_extensions.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 13
  %0 = ptrtoint ptr %active_extensions.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %active_extensions.i.i.i.i, align 1
  %2 = and i8 %1, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.i.not.i.i.i = icmp eq i8 %2, 0
  br i1 %tobool.i.not.i.i.i, label %skb_sec_path.exit, label %skb_sec_path.exit.i

skb_sec_path.exit.i:                              ; preds = %entry
  %extensions.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 22
  %3 = ptrtoint ptr %extensions.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %extensions.i.i.i, align 8
  %arrayidx.i.i.i = getelementptr %struct.skb_ext, ptr %4, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx.i.i.i, align 1
  %conv.i.i.i = zext i8 %6 to i32
  %shl.i.i.i = shl nuw nsw i32 %conv.i.i.i, 3
  %add.ptr.i.i.i = getelementptr i8, ptr %4, i32 %shl.i.i.i
  %tobool.not.i = icmp eq ptr %add.ptr.i.i.i, null
  br i1 %tobool.not.i, label %skb_sec_path.exit.i.skb_sec_path.exit.thread_crit_edge, label %lor.lhs.false.i

skb_sec_path.exit.i.skb_sec_path.exit.thread_crit_edge: ; preds = %skb_sec_path.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_sec_path.exit.thread

lor.lhs.false.i:                                  ; preds = %skb_sec_path.exit.i
  %olen.i = getelementptr inbounds %struct.sec_path, ptr %add.ptr.i.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %olen.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %olen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool1.not.i = icmp eq i32 %8, 0
  br i1 %tobool1.not.i, label %lor.lhs.false.i.skb_sec_path.exit.thread_crit_edge, label %lor.lhs.false2.i

lor.lhs.false.i.skb_sec_path.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_sec_path.exit.thread

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %9 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %8)
  %cmp.not.i = icmp eq i32 %10, %8
  br i1 %cmp.not.i, label %if.end.i, label %lor.lhs.false2.i.skb_sec_path.exit.thread_crit_edge

lor.lhs.false2.i.skb_sec_path.exit.thread_crit_edge: ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_sec_path.exit.thread

if.end.i:                                         ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i = add i32 %8, -1
  %arrayidx.i = getelementptr %struct.sec_path, ptr %add.ptr.i.i.i, i32 0, i32 3, i32 %sub.i
  br label %skb_sec_path.exit.thread

skb_sec_path.exit:                                ; preds = %entry
  call void @__asan_load4_noabort(i32 0)
  %11 = load i32, ptr null, align 2147483648
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp.not = icmp eq i32 %11, 1
  br i1 %cmp.not, label %skb_sec_path.exit.xfrm_input_state.exit_crit_edge, label %skb_sec_path.exit.if.then_crit_edge, !prof !28

skb_sec_path.exit.if.then_crit_edge:              ; preds = %skb_sec_path.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

skb_sec_path.exit.xfrm_input_state.exit_crit_edge: ; preds = %skb_sec_path.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %xfrm_input_state.exit

skb_sec_path.exit.thread:                         ; preds = %if.end.i, %lor.lhs.false2.i.skb_sec_path.exit.thread_crit_edge, %lor.lhs.false.i.skb_sec_path.exit.thread_crit_edge, %skb_sec_path.exit.i.skb_sec_path.exit.thread_crit_edge
  %retval.0.i.ph = phi ptr [ null, %skb_sec_path.exit.i.skb_sec_path.exit.thread_crit_edge ], [ null, %lor.lhs.false.i.skb_sec_path.exit.thread_crit_edge ], [ null, %lor.lhs.false2.i.skb_sec_path.exit.thread_crit_edge ], [ %arrayidx.i, %if.end.i ]
  %12 = ptrtoint ptr %extensions.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %extensions.i.i.i, align 8
  %arrayidx.i.i = getelementptr %struct.skb_ext, ptr %13, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i = zext i8 %15 to i32
  %shl.i.i = shl nuw nsw i32 %conv.i.i, 3
  %add.ptr.i.i = getelementptr i8, ptr %13, i32 %shl.i.i
  %16 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %add.ptr.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp.not146 = icmp eq i32 %17, 1
  br i1 %cmp.not146, label %if.then.i.i.i, label %skb_sec_path.exit.thread.if.then_crit_edge, !prof !28

skb_sec_path.exit.thread.if.then_crit_edge:       ; preds = %skb_sec_path.exit.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %skb_sec_path.exit.thread.if.then_crit_edge, %skb_sec_path.exit.if.then_crit_edge
  %ipsec = getelementptr i8, ptr %netdev, i32 30244
  %18 = ptrtoint ptr %ipsec to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ipsec, align 4
  %ipsec_tx_drop_bundle = getelementptr inbounds %struct.mlx5e_ipsec, ptr %19, i32 0, i32 5, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ipsec_tx_drop_bundle, i32 noundef 8) #7
  tail call void @generic_atomic64_add(i64 noundef 1, ptr noundef %ipsec_tx_drop_bundle) #7
  br label %drop

if.then.i.i.i:                                    ; preds = %skb_sec_path.exit.thread
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %extensions.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %extensions.i.i.i, align 8
  %arrayidx.i.i.i112 = getelementptr %struct.skb_ext, ptr %21, i32 0, i32 1, i32 1
  %22 = ptrtoint ptr %arrayidx.i.i.i112 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx.i.i.i112, align 1
  %conv.i.i.i113 = zext i8 %23 to i32
  %shl.i.i.i114 = shl nuw nsw i32 %conv.i.i.i113, 3
  %add.ptr.i.i.i115 = getelementptr i8, ptr %21, i32 %shl.i.i.i114
  br label %xfrm_input_state.exit

xfrm_input_state.exit:                            ; preds = %if.then.i.i.i, %skb_sec_path.exit.xfrm_input_state.exit_crit_edge
  %retval.0.i142147150 = phi ptr [ %retval.0.i.ph, %if.then.i.i.i ], [ null, %skb_sec_path.exit.xfrm_input_state.exit_crit_edge ]
  %retval.0.i.i.i = phi ptr [ %add.ptr.i.i.i115, %if.then.i.i.i ], [ null, %skb_sec_path.exit.xfrm_input_state.exit_crit_edge ]
  %24 = ptrtoint ptr %retval.0.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %retval.0.i.i.i, align 4
  %sub.i116 = add i32 %25, -1
  %arrayidx.i117 = getelementptr %struct.sec_path, ptr %retval.0.i.i.i, i32 0, i32 2, i32 %sub.i116
  %26 = ptrtoint ptr %arrayidx.i117 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.i117, align 4
  %tobool5.not = icmp eq ptr %27, null
  br i1 %tobool5.not, label %if.then14, label %if.end17, !prof !27

if.then14:                                        ; preds = %xfrm_input_state.exit
  call void @__sanitizer_cov_trace_pc() #9
  %ipsec15 = getelementptr i8, ptr %netdev, i32 30244
  %28 = ptrtoint ptr %ipsec15 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ipsec15, align 4
  %ipsec_tx_drop_no_state = getelementptr inbounds %struct.mlx5e_ipsec, ptr %29, i32 0, i32 5, i32 4
  %call.i.i105 = tail call zeroext i1 @__kasan_check_write(ptr noundef %ipsec_tx_drop_no_state, i32 noundef 8) #7
  tail call void @generic_atomic64_add(i64 noundef 1, ptr noundef %ipsec_tx_drop_no_state) #7
  br label %drop

if.end17:                                         ; preds = %xfrm_input_state.exit
  %offload_handle = getelementptr inbounds %struct.xfrm_state, ptr %27, i32 0, i32 41, i32 3
  %30 = ptrtoint ptr %offload_handle to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %offload_handle, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool18.not = icmp eq i32 %31, 0
  br i1 %tobool18.not, label %if.end17.if.then31_crit_edge, label %lor.rhs, !prof !27

if.end17.if.then31_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then31

lor.rhs:                                          ; preds = %if.end17
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %32 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %protocol, align 8
  %34 = zext i16 %33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.11)
  switch i16 %33, label %lor.rhs.if.then31_crit_edge [
    i16 -31011, label %lor.rhs.if.end34_crit_edge
    i16 2048, label %lor.rhs.if.end34_crit_edge153
  ]

lor.rhs.if.end34_crit_edge153:                    ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

lor.rhs.if.end34_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

lor.rhs.if.then31_crit_edge:                      ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then31

if.then31:                                        ; preds = %lor.rhs.if.then31_crit_edge, %if.end17.if.then31_crit_edge
  %ipsec32 = getelementptr i8, ptr %netdev, i32 30244
  %35 = ptrtoint ptr %ipsec32 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ipsec32, align 4
  %ipsec_tx_drop_not_ip = getelementptr inbounds %struct.mlx5e_ipsec, ptr %36, i32 0, i32 5, i32 5
  %call.i.i106 = tail call zeroext i1 @__kasan_check_write(ptr noundef %ipsec_tx_drop_not_ip, i32 noundef 8) #7
  tail call void @generic_atomic64_add(i64 noundef 1, ptr noundef %ipsec_tx_drop_not_ip) #7
  br label %drop

if.end34:                                         ; preds = %lor.rhs.if.end34_crit_edge, %lor.rhs.if.end34_crit_edge153
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %37 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %end.i.i, align 4
  %gso_size.i = getelementptr inbounds %struct.skb_shared_info, ptr %38, i32 0, i32 4
  %39 = ptrtoint ptr %gso_size.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %gso_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %40)
  %tobool.i.not = icmp eq i16 %40, 0
  br i1 %tobool.i.not, label %if.then36, label %if.end34.if.end49_crit_edge

if.end34.if.end49_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end49

if.then36:                                        ; preds = %if.end34
  %data.i = getelementptr inbounds %struct.xfrm_state, ptr %27, i32 0, i32 51
  %41 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %data.i, align 8
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %42, align 128
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %45 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %head.i.i.i, align 8
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %47 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i.i119 = zext i16 %48 to i32
  %add.ptr.i.i.i120 = getelementptr i8, ptr %46, i32 %conv.i.i.i119
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %plen.i) #7
  %49 = ptrtoint ptr %plen.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 -1, ptr %plen.i, align 1, !annotation !29
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %50 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %len.i, align 4
  %sub.i121 = sub i32 -2, %44
  %sub3.i = add i32 %sub.i121, %51
  %call4.i = call i32 @skb_copy_bits(ptr noundef %skb, i32 noundef %sub3.i, ptr noundef nonnull %plen.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool.not.i122 = icmp eq i32 %call4.i, 0
  br i1 %tobool.not.i122, label %if.end.i123, label %if.then45, !prof !28

if.end.i123:                                      ; preds = %if.then36
  %52 = ptrtoint ptr %plen.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %plen.i, align 1
  %conv.i = zext i8 %53 to i32
  %add.i = add i32 %44, 2
  %add7.i = add i32 %add.i, %conv.i
  %54 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %len.i, align 4
  %sub9.i = sub i32 %55, %add7.i
  call void @__sanitizer_cov_trace_cmp4(i32 %55, i32 %sub9.i)
  %cmp.i.i = icmp ugt i32 %55, %sub9.i
  br i1 %cmp.i.i, label %cond.true.i.i, label %if.end.i123.pskb_trim.exit.i_crit_edge

if.end.i123.pskb_trim.exit.i_crit_edge:           ; preds = %if.end.i123
  call void @__sanitizer_cov_trace_pc() #9
  br label %pskb_trim.exit.i

cond.true.i.i:                                    ; preds = %if.end.i123
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %56 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool.not.i.i.i = icmp eq i32 %57, 0
  br i1 %tobool.not.i.i.i, label %__skb_trim.exit.i.i.i, label %if.then.i.i.i124

if.then.i.i.i124:                                 ; preds = %cond.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i = call i32 @___pskb_trim(ptr noundef %skb, i32 noundef %sub9.i) #7
  br label %pskb_trim.exit.i

__skb_trim.exit.i.i.i:                            ; preds = %cond.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %58 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %sub9.i, ptr %len.i, align 4
  %data.i.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %59 = ptrtoint ptr %data.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %data.i.i.i.i.i.i, align 4
  %add.ptr.i.i.i.i.i.i = getelementptr i8, ptr %60, i32 %sub9.i
  %tail.i.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %61 = ptrtoint ptr %tail.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %add.ptr.i.i.i.i.i.i, ptr %tail.i.i.i.i.i.i, align 8
  br label %pskb_trim.exit.i

pskb_trim.exit.i:                                 ; preds = %__skb_trim.exit.i.i.i, %if.then.i.i.i124, %if.end.i123.pskb_trim.exit.i_crit_edge
  %62 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %protocol, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %63)
  %cmp.i = icmp eq i16 %63, 2048
  br i1 %cmp.i, label %if.then13.i, label %if.else.i

if.then13.i:                                      ; preds = %pskb_trim.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %tot_len.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i120, i32 0, i32 2
  %64 = ptrtoint ptr %tot_len.i to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %tot_len.i, align 2
  %66 = trunc i32 %add7.i to i16
  %conv16.i = sub i16 %65, %66
  store i16 %conv16.i, ptr %tot_len.i, align 2
  call void @ip_send_check(ptr noundef %add.ptr.i.i.i120) #7
  br label %mlx5e_ipsec_remove_trailer.exit.thread

if.else.i:                                        ; preds = %pskb_trim.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %payload_len.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i.i120, i32 0, i32 2
  %67 = ptrtoint ptr %payload_len.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %payload_len.i, align 4
  %69 = trunc i32 %add7.i to i16
  %conv20.i = sub i16 %68, %69
  store i16 %conv20.i, ptr %payload_len.i, align 4
  br label %mlx5e_ipsec_remove_trailer.exit.thread

mlx5e_ipsec_remove_trailer.exit.thread:           ; preds = %if.else.i, %if.then13.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %plen.i) #7
  br label %if.end49

if.then45:                                        ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %plen.i) #7
  %ipsec46 = getelementptr i8, ptr %netdev, i32 30244
  %70 = ptrtoint ptr %ipsec46 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %ipsec46, align 4
  %ipsec_tx_drop_trailer = getelementptr inbounds %struct.mlx5e_ipsec, ptr %71, i32 0, i32 5, i32 6
  %call.i.i107 = call zeroext i1 @__kasan_check_write(ptr noundef %ipsec_tx_drop_trailer, i32 noundef 8) #7
  call void @generic_atomic64_add(i64 noundef 1, ptr noundef %ipsec_tx_drop_trailer) #7
  br label %drop

if.end49:                                         ; preds = %mlx5e_ipsec_remove_trailer.exit.thread, %if.end34.if.end49_crit_edge
  %mdev = getelementptr i8, ptr %netdev, i32 11328
  %72 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %mdev, align 64
  %caps = getelementptr inbounds %struct.mlx5_core_dev, ptr %73, i32 0, i32 8
  %74 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %caps, align 8
  %add.ptr = getelementptr i32, ptr %75, i32 14
  %76 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %add.ptr, align 4
  %78 = and i32 %77, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %tobool50.not = icmp eq i32 %78, 0
  br i1 %tobool50.not, label %if.end49.if.end58_crit_edge, label %if.then51

if.end49.if.end58_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end58

if.then51:                                        ; preds = %if.end49
  %cloned.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %79 = ptrtoint ptr %cloned.i.i.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %bf.load.i.i.i = load i8, ptr %cloned.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i.i)
  %tobool.not.i.i.i125 = icmp sgt i8 %bf.load.i.i.i, -1
  br i1 %tobool.not.i.i.i125, label %skb_header_cloned.exit.thread.i.i, label %skb_header_cloned.exit.i.i

skb_header_cloned.exit.i.i:                       ; preds = %if.then51
  %80 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %end.i.i, align 4
  %dataref1.i.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %81, i32 0, i32 10
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %dataref1.i.i.i, i32 noundef 4) #7
  %82 = ptrtoint ptr %dataref1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load volatile i32, ptr %dataref1.i.i.i, align 4
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %84 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %data.i.i.i.i, align 4
  %head.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %86 = ptrtoint ptr %head.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %head.i.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i.i = ptrtoint ptr %85 to i32
  %sub.ptr.rhs.cast.i.i.i.i = ptrtoint ptr %87 to i32
  %sub.ptr.sub.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub.ptr.sub.i.i.i.i)
  %cmp.i1.i.i = icmp ult i32 %sub.ptr.sub.i.i.i.i, 8
  br i1 %cmp.i1.i.i, label %skb_header_cloned.exit.i.i.if.end.thread.i.i.i_crit_edge, label %if.end.i2.i.i

skb_header_cloned.exit.i.i.if.end.thread.i.i.i_crit_edge: ; preds = %skb_header_cloned.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.thread.i.i.i

skb_header_cloned.exit.thread.i.i:                ; preds = %if.then51
  %data.i.i5.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %88 = ptrtoint ptr %data.i.i5.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %data.i.i5.i.i, align 4
  %head.i.i6.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %90 = ptrtoint ptr %head.i.i6.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %head.i.i6.i.i, align 8
  %sub.ptr.lhs.cast.i.i7.i.i = ptrtoint ptr %89 to i32
  %sub.ptr.rhs.cast.i.i8.i.i = ptrtoint ptr %91 to i32
  %sub.ptr.sub.i.i9.i.i = sub i32 %sub.ptr.lhs.cast.i.i7.i.i, %sub.ptr.rhs.cast.i.i8.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub.ptr.sub.i.i9.i.i)
  %cmp.i110.i.i = icmp ult i32 %sub.ptr.sub.i.i9.i.i, 8
  br i1 %cmp.i110.i.i, label %skb_header_cloned.exit.thread.i.i.if.end.thread.i.i.i_crit_edge, label %skb_header_cloned.exit.thread.i.i.mlx5e_ipsec_add_metadata.exit_crit_edge

skb_header_cloned.exit.thread.i.i.mlx5e_ipsec_add_metadata.exit_crit_edge: ; preds = %skb_header_cloned.exit.thread.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mlx5e_ipsec_add_metadata.exit

skb_header_cloned.exit.thread.i.i.if.end.thread.i.i.i_crit_edge: ; preds = %skb_header_cloned.exit.thread.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.thread.i.i.i

if.end.thread.i.i.i:                              ; preds = %skb_header_cloned.exit.thread.i.i.if.end.thread.i.i.i_crit_edge, %skb_header_cloned.exit.i.i.if.end.thread.i.i.i_crit_edge
  %sub.ptr.sub.i.i12.i.i = phi i32 [ %sub.ptr.sub.i.i9.i.i, %skb_header_cloned.exit.thread.i.i.if.end.thread.i.i.i_crit_edge ], [ %sub.ptr.sub.i.i.i.i, %skb_header_cloned.exit.i.i.if.end.thread.i.i.i_crit_edge ]
  %phi.bo.i.i.i = sub nuw nsw i32 135, %sub.ptr.sub.i.i12.i.i
  %phi.bo11.i.i.i = and i32 %phi.bo.i.i.i, -128
  br label %skb_cow_head.exit.i

if.end.i2.i.i:                                    ; preds = %skb_header_cloned.exit.i.i
  %and.i.i.i = and i32 %83, 65535
  %shr.i.i.i = ashr i32 %83, 16
  %sub.i.i.i = sub nsw i32 %and.i.i.i, %shr.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i.i.i)
  %cmp.i.not.i.i = icmp eq i32 %sub.i.i.i, 1
  br i1 %cmp.i.not.i.i, label %if.end.i2.i.i.mlx5e_ipsec_add_metadata.exit_crit_edge, label %if.end.i2.i.i.skb_cow_head.exit.i_crit_edge

if.end.i2.i.i.skb_cow_head.exit.i_crit_edge:      ; preds = %if.end.i2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_cow_head.exit.i

if.end.i2.i.i.mlx5e_ipsec_add_metadata.exit_crit_edge: ; preds = %if.end.i2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mlx5e_ipsec_add_metadata.exit

skb_cow_head.exit.i:                              ; preds = %if.end.i2.i.i.skb_cow_head.exit.i_crit_edge, %if.end.thread.i.i.i
  %delta.010.i.i.i = phi i32 [ %phi.bo11.i.i.i, %if.end.thread.i.i.i ], [ 0, %if.end.i2.i.i.skb_cow_head.exit.i_crit_edge ]
  %call4.i.i.i = call i32 @pskb_expand_head(ptr noundef %skb, i32 noundef %delta.010.i.i.i, i32 noundef 0, i32 noundef 2592) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i.i)
  %tobool.not.i126 = icmp eq i32 %call4.i.i.i, 0
  br i1 %tobool.not.i126, label %skb_cow_head.exit.i.mlx5e_ipsec_add_metadata.exit_crit_edge, label %skb_cow_head.exit.i.if.then54_crit_edge, !prof !28

skb_cow_head.exit.i.if.then54_crit_edge:          ; preds = %skb_cow_head.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then54

skb_cow_head.exit.i.mlx5e_ipsec_add_metadata.exit_crit_edge: ; preds = %skb_cow_head.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mlx5e_ipsec_add_metadata.exit

mlx5e_ipsec_add_metadata.exit:                    ; preds = %skb_cow_head.exit.i.mlx5e_ipsec_add_metadata.exit_crit_edge, %if.end.i2.i.i.mlx5e_ipsec_add_metadata.exit_crit_edge, %skb_header_cloned.exit.thread.i.i.mlx5e_ipsec_add_metadata.exit_crit_edge
  %call4.i127 = call ptr @skb_push(ptr noundef %skb, i32 noundef 8) #7
  %mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %92 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %mac_header.i, align 2
  %sub.i128 = add i16 %93, -8
  store i16 %sub.i128, ptr %mac_header.i, align 2
  %add.ptr.i129 = getelementptr %struct.ethhdr, ptr %call4.i127, i32 1
  %data.i130 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %94 = ptrtoint ptr %data.i130 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %data.i130, align 4
  %add.ptr7.i = getelementptr i8, ptr %95, i32 8
  %96 = call ptr @memmove(ptr %95, ptr %add.ptr7.i, i32 12)
  %h_proto.i = getelementptr inbounds %struct.ethhdr, ptr %call4.i127, i32 0, i32 2
  %97 = ptrtoint ptr %h_proto.i to i32
  call void @__asan_storeN_noabort(i32 %97, i32 2)
  store i16 -29468, ptr %h_proto.i, align 1
  %content.i = getelementptr %struct.ethhdr, ptr %call4.i127, i32 1, i32 0, i32 1
  %98 = call ptr @memset(ptr %content.i, i32 0, i32 5)
  %cmp.i133 = icmp ugt ptr %add.ptr.i129, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i133, label %mlx5e_ipsec_add_metadata.exit.if.then54_crit_edge, label %mlx5e_ipsec_add_metadata.exit.if.end58_crit_edge

mlx5e_ipsec_add_metadata.exit.if.end58_crit_edge: ; preds = %mlx5e_ipsec_add_metadata.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end58

mlx5e_ipsec_add_metadata.exit.if.then54_crit_edge: ; preds = %mlx5e_ipsec_add_metadata.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then54

if.then54:                                        ; preds = %mlx5e_ipsec_add_metadata.exit.if.then54_crit_edge, %skb_cow_head.exit.i.if.then54_crit_edge
  %ipsec55 = getelementptr i8, ptr %netdev, i32 30244
  %99 = ptrtoint ptr %ipsec55 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %ipsec55, align 4
  %ipsec_tx_drop_metadata = getelementptr inbounds %struct.mlx5e_ipsec, ptr %100, i32 0, i32 5, i32 7
  %call.i.i108 = call zeroext i1 @__kasan_check_write(ptr noundef %ipsec_tx_drop_metadata, i32 noundef 8) #7
  call void @generic_atomic64_add(i64 noundef 1, ptr noundef %ipsec_tx_drop_metadata) #7
  br label %drop

if.end58:                                         ; preds = %mlx5e_ipsec_add_metadata.exit.if.end58_crit_edge, %if.end49.if.end58_crit_edge
  %mdata.0 = phi ptr [ %add.ptr.i129, %mlx5e_ipsec_add_metadata.exit.if.end58_crit_edge ], [ inttoptr (i32 -1 to ptr), %if.end49.if.end58_crit_edge ]
  %101 = ptrtoint ptr %offload_handle to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %offload_handle, align 4
  %103 = inttoptr i32 %102 to ptr
  %set_iv_op = getelementptr inbounds %struct.mlx5e_ipsec_sa_entry, ptr %103, i32 0, i32 7
  %104 = ptrtoint ptr %set_iv_op to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %set_iv_op, align 4
  call void %105(ptr noundef %skb, ptr noundef nonnull %27, ptr noundef %retval.0.i142147150) #7
  %106 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %mdev, align 64
  %caps62 = getelementptr inbounds %struct.mlx5_core_dev, ptr %107, i32 0, i32 8
  %108 = ptrtoint ptr %caps62 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %caps62, align 8
  %add.ptr67 = getelementptr i32, ptr %109, i32 14
  %110 = ptrtoint ptr %add.ptr67 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %add.ptr67, align 4
  %112 = and i32 %111, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %112)
  %tobool70.not = icmp eq i32 %112, 0
  br i1 %tobool70.not, label %if.end58.if.end72_crit_edge, label %if.then71

if.end58.if.end72_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end72

if.then71:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @mlx5e_ipsec_set_metadata(ptr noundef %skb, ptr noundef %mdata.0, ptr noundef %retval.0.i142147150)
  br label %if.end72

if.end72:                                         ; preds = %if.then71, %if.end58.if.end72_crit_edge
  %x1.i = getelementptr inbounds %struct.mlx5e_accel_tx_ipsec_state, ptr %ipsec_st, i32 0, i32 1
  %113 = ptrtoint ptr %x1.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %27, ptr %x1.i, align 4
  %114 = ptrtoint ptr %ipsec_st to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %retval.0.i142147150, ptr %ipsec_st, align 4
  %115 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %mdev, align 64
  %caps.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %116, i32 0, i32 8
  %117 = ptrtoint ptr %caps.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %caps.i.i, align 8
  %add.ptr.i.i134 = getelementptr i32, ptr %118, i32 35
  %119 = ptrtoint ptr %add.ptr.i.i134 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %add.ptr.i.i134, align 4
  %121 = and i32 %120, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %121)
  %tobool.not.i.i = icmp eq i32 %121, 0
  br i1 %tobool.not.i.i, label %if.end72.cleanup_crit_edge, label %if.end.i.i

if.end72.cleanup_crit_edge:                       ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end72
  %add.ptr6.i.i = getelementptr i32, ptr %118, i32 45
  %122 = ptrtoint ptr %add.ptr6.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %add.ptr6.i.i, align 4
  %124 = and i32 %123, 7936
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %124)
  %tobool9.not.i.i = icmp eq i32 %124, 0
  br i1 %tobool9.not.i.i, label %if.end.i.i.cleanup_crit_edge, label %if.end11.i.i

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end11.i.i:                                     ; preds = %if.end.i.i
  %add.ptr17.i.i = getelementptr i64, ptr %118, i32 16
  %125 = ptrtoint ptr %add.ptr17.i.i to i32
  call void @__asan_load8_noabort(i32 %125)
  %126 = load i64, ptr %add.ptr17.i.i, align 8
  %and18.i.i = and i64 %126, 524288
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and18.i.i)
  %tobool19.not.i.i = icmp eq i64 %and18.i.i, 0
  br i1 %tobool19.not.i.i, label %if.end11.i.i.cleanup_crit_edge, label %if.end21.i.i

if.end11.i.i.cleanup_crit_edge:                   ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end21.i.i:                                     ; preds = %if.end11.i.i
  %arrayidx24.i.i = getelementptr %struct.mlx5_core_dev, ptr %116, i32 0, i32 8, i32 0, i32 21
  %127 = ptrtoint ptr %arrayidx24.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %arrayidx24.i.i, align 4
  %129 = ptrtoint ptr %128 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %128, align 4
  %131 = and i32 %130, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %131)
  %tobool30.not.i.i = icmp eq i32 %131, 0
  br i1 %tobool30.not.i.i, label %if.end21.i.i.cleanup_crit_edge, label %mlx5_is_ipsec_device.exit.i

if.end21.i.i.cleanup_crit_edge:                   ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

mlx5_is_ipsec_device.exit.i:                      ; preds = %if.end21.i.i
  %arrayidx33.i.i = getelementptr %struct.mlx5_core_dev, ptr %116, i32 0, i32 8, i32 0, i32 1
  %132 = ptrtoint ptr %arrayidx33.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %arrayidx33.i.i, align 4
  %add.ptr36.i.i = getelementptr i32, ptr %133, i32 1
  %134 = ptrtoint ptr %add.ptr36.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %add.ptr36.i.i, align 4
  %136 = and i32 %135, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %136)
  %tobool39.i.not.i = icmp eq i32 %136, 0
  br i1 %tobool39.i.not.i, label %mlx5_is_ipsec_device.exit.i.cleanup_crit_edge, label %if.then.i

mlx5_is_ipsec_device.exit.i.cleanup_crit_edge:    ; preds = %mlx5_is_ipsec_device.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i:                                        ; preds = %mlx5_is_ipsec_device.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %data.i135 = getelementptr inbounds %struct.xfrm_state, ptr %27, i32 0, i32 51
  %137 = ptrtoint ptr %data.i135 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %data.i135, align 8
  %139 = ptrtoint ptr %138 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %138, align 128
  %__crt_alg.i.i.i = getelementptr inbounds %struct.crypto_aead, ptr %138, i32 0, i32 3, i32 3
  %141 = ptrtoint ptr %__crt_alg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %__crt_alg.i.i.i, align 4
  %cra_blocksize.i.i.i = getelementptr inbounds %struct.crypto_alg, ptr %142, i32 0, i32 3
  %143 = ptrtoint ptr %cra_blocksize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %cra_blocksize.i.i.i, align 4
  %add.i136 = add i32 %144, 3
  %and.i = and i32 %add.i136, -4
  %len.i137 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %145 = ptrtoint ptr %len.i137 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %len.i137, align 4
  %sub.i138 = add i32 %146, 1
  %add6.i = add i32 %sub.i138, %and.i
  %neg.i = sub i32 0, %and.i
  %and8.i = and i32 %add6.i, %neg.i
  %sub10.i = sub i32 %and8.i, %146
  %147 = call i32 @llvm.umax.i32(i32 %sub10.i, i32 4) #7
  %add11.i = add i32 %147, %140
  %plen12.i = getelementptr inbounds %struct.mlx5e_accel_tx_ipsec_state, ptr %ipsec_st, i32 0, i32 3
  %148 = ptrtoint ptr %plen12.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %147, ptr %plen12.i, align 4
  %tailen13.i = getelementptr inbounds %struct.mlx5e_accel_tx_ipsec_state, ptr %ipsec_st, i32 0, i32 2
  %149 = ptrtoint ptr %tailen13.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 %add11.i, ptr %tailen13.i, align 4
  br label %cleanup

drop:                                             ; preds = %if.then54, %if.then45, %if.then31, %if.then14, %if.then
  call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #7
  br label %cleanup

cleanup:                                          ; preds = %drop, %if.then.i, %mlx5_is_ipsec_device.exit.i.cleanup_crit_edge, %if.end21.i.i.cleanup_crit_edge, %if.end11.i.i.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge, %if.end72.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %drop ], [ true, %if.end72.cleanup_crit_edge ], [ true, %if.end.i.i.cleanup_crit_edge ], [ true, %if.end11.i.i.cleanup_crit_edge ], [ true, %if.end21.i.i.cleanup_crit_edge ], [ true, %mlx5_is_ipsec_device.exit.i.cleanup_crit_edge ], [ true, %if.then.i ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlx5e_ipsec_set_metadata(ptr nocapture noundef readonly %skb, ptr nocapture noundef %mdata, ptr nocapture noundef readonly %xo) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %0 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %end.i.i, align 4
  %gso_size.i = getelementptr inbounds %struct.skb_shared_info, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %gso_size.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %gso_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.i.not = icmp eq i16 %3, 0
  br i1 %tobool.i.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %4 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %head.i.i, align 8
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %6 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i = zext i16 %7 to i32
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 %conv.i.i
  %inner_transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 15
  %8 = ptrtoint ptr %inner_transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %inner_transport_header.i.i, align 2
  %conv.i.i104 = zext i16 %9 to i32
  %add.ptr.i.i105 = getelementptr i8, ptr %5, i32 %conv.i.i104
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5e_ipsec_set_metadata.__UNIQUE_ID_ddebug640, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5e_ipsec_set_metadata, %if.then7)) #7
          to label %do.body14 [label %if.then7], !srcloc !30

if.then7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %10 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 8
  %network_header = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %13 = ptrtoint ptr %network_header to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %network_header, align 4
  %conv = zext i16 %14 to i32
  %15 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %transport_header.i.i, align 2
  %conv8 = zext i16 %16 to i32
  %inner_network_header = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 16
  %17 = ptrtoint ptr %inner_network_header to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %inner_network_header, align 4
  %conv9 = zext i16 %18 to i32
  %19 = ptrtoint ptr %inner_transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %inner_transport_header.i.i, align 2
  %conv10 = zext i16 %20 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @mlx5e_ipsec_set_metadata.__UNIQUE_ID_ddebug640, ptr noundef %12, ptr noundef nonnull @.str.4, i32 noundef %conv, i32 noundef %conv8, i32 noundef %conv9, i32 noundef %conv10) #7
  br label %do.body14

do.body14:                                        ; preds = %if.then7, %if.then
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5e_ipsec_set_metadata.__UNIQUE_ID_ddebug641, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5e_ipsec_set_metadata, %if.then26)) #7
          to label %do.end35 [label %if.then26], !srcloc !30

if.then26:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #9
  %21 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 8
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %24 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %len, align 4
  %26 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %end.i.i, align 4
  %gso_size = getelementptr inbounds %struct.skb_shared_info, ptr %27, i32 0, i32 4
  %28 = ptrtoint ptr %gso_size to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %gso_size, align 4
  %conv28 = zext i16 %29 to i32
  %30 = ptrtoint ptr %add.ptr.i.i105 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %add.ptr.i.i105, align 4
  %conv29 = zext i16 %31 to i32
  %dest = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i105, i32 0, i32 1
  %32 = ptrtoint ptr %dest to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %dest, align 2
  %conv30 = zext i16 %33 to i32
  %seq = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i105, i32 0, i32 2
  %34 = ptrtoint ptr %seq to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %seq, align 4
  %seq_no = getelementptr inbounds %struct.ip_esp_hdr, ptr %add.ptr.i.i, i32 0, i32 1
  %36 = ptrtoint ptr %seq_no to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %seq_no, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @mlx5e_ipsec_set_metadata.__UNIQUE_ID_ddebug641, ptr noundef %23, ptr noundef nonnull @.str.5, i32 noundef %25, i32 noundef %conv28, i32 noundef %conv29, i32 noundef %conv30, i32 noundef %35, i32 noundef %37) #7
  br label %do.end35

do.end35:                                         ; preds = %if.then26, %do.body14
  %38 = ptrtoint ptr %mdata to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 9, ptr %mdata, align 1
  %39 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %end.i.i, align 4
  %gso_size.i107 = getelementptr inbounds %struct.skb_shared_info, ptr %40, i32 0, i32 4
  %41 = ptrtoint ptr %gso_size.i107 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %gso_size.i107, align 4
  %idxprom.i = zext i16 %42 to i32
  %arrayidx.i = getelementptr [2048 x i16], ptr @mlx5e_ipsec_inverse_table, i32 0, i32 %idxprom.i
  %43 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %arrayidx.i, align 2
  %content = getelementptr inbounds %struct.mlx5e_ipsec_metadata, ptr %mdata, i32 0, i32 1
  %45 = ptrtoint ptr %content to i32
  call void @__asan_storeN_noabort(i32 %45, i32 2)
  store i16 %44, ptr %content, align 1
  %seq37 = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i105, i32 0, i32 2
  %46 = ptrtoint ptr %seq37 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %seq37, align 4
  %conv38 = trunc i32 %47 to i16
  %seq40 = getelementptr inbounds %struct.mlx5e_ipsec_metadata, ptr %mdata, i32 0, i32 1, i32 0, i32 2
  %48 = ptrtoint ptr %seq40 to i32
  call void @__asan_storeN_noabort(i32 %48, i32 2)
  store i16 %conv38, ptr %seq40, align 1
  br label %if.end42

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %49 = ptrtoint ptr %mdata to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 8, ptr %mdata, align 1
  br label %if.end42

if.end42:                                         ; preds = %if.else, %do.end35
  %proto = getelementptr inbounds %struct.xfrm_offload, ptr %xo, i32 0, i32 3
  %50 = ptrtoint ptr %proto to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %proto, align 4
  %esp_next_proto = getelementptr inbounds %struct.mlx5e_ipsec_metadata, ptr %mdata, i32 0, i32 1, i32 0, i32 4
  %52 = ptrtoint ptr %esp_next_proto to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %51, ptr %esp_next_proto, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5e_ipsec_set_metadata.__UNIQUE_ID_ddebug642, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5e_ipsec_set_metadata, %if.then57)) #7
          to label %do.end73 [label %if.then57], !srcloc !30

if.then57:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  %content43 = getelementptr inbounds %struct.mlx5e_ipsec_metadata, ptr %mdata, i32 0, i32 1
  %53 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %53, align 8
  %56 = ptrtoint ptr %mdata to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %mdata, align 1
  %conv59 = zext i8 %57 to i32
  %58 = ptrtoint ptr %esp_next_proto to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %esp_next_proto, align 1
  %conv62 = zext i8 %59 to i32
  %60 = ptrtoint ptr %content43 to i32
  call void @__asan_loadN_noabort(i32 %60, i32 2)
  %61 = load i16, ptr %content43, align 1
  %conv65 = zext i16 %61 to i32
  %seq67 = getelementptr inbounds %struct.mlx5e_ipsec_metadata, ptr %mdata, i32 0, i32 1, i32 0, i32 2
  %62 = ptrtoint ptr %seq67 to i32
  call void @__asan_loadN_noabort(i32 %62, i32 2)
  %63 = load i16, ptr %seq67, align 1
  %conv68 = zext i16 %63 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @mlx5e_ipsec_set_metadata.__UNIQUE_ID_ddebug642, ptr noundef %55, ptr noundef nonnull @.str.6, i32 noundef %conv59, i32 noundef %conv62, i32 noundef %conv65, i32 noundef %conv68) #7
  br label %do.end73

do.end73:                                         ; preds = %if.then57, %if.end42
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mlx5e_ipsec_handle_rx_skb(ptr nocapture noundef readonly %netdev, ptr noundef %skb, ptr nocapture noundef %cqe_bcnt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 22, i32 %1)
  %cmp.i = icmp ult i32 %1, 22
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %is_metadata_hdr_valid.exit, !prof !27

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

is_metadata_hdr_valid.exit:                       ; preds = %entry
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %2 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 12
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %add.ptr.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -29468, i16 %5)
  %cmp2.not.i = icmp eq i16 %5, -29468
  br i1 %cmp2.not.i, label %if.end, label %is_metadata_hdr_valid.exit.cleanup_crit_edge

is_metadata_hdr_valid.exit.cleanup_crit_edge:     ; preds = %is_metadata_hdr_valid.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %is_metadata_hdr_valid.exit
  %6 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data.i, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 14
  %call1.i = tail call ptr @secpath_set(ptr noundef %skb) #7
  %tobool.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i14, !prof !27

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %ipsec.i = getelementptr i8, ptr %netdev, i32 30244
  %8 = ptrtoint ptr %ipsec.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ipsec.i, align 4
  %sw_stats.i = getelementptr inbounds %struct.mlx5e_ipsec, ptr %9, i32 0, i32 5
  br label %if.then5

if.end.i14:                                       ; preds = %if.end
  %content.i = getelementptr i8, ptr %7, i32 15
  %sa_handle5.i = getelementptr i8, ptr %7, i32 16
  %10 = ptrtoint ptr %sa_handle5.i to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %sa_handle5.i, align 1
  %ipsec6.i = getelementptr i8, ptr %netdev, i32 30244
  %12 = ptrtoint ptr %ipsec6.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ipsec6.i, align 4
  %call7.i = tail call ptr @mlx5e_ipsec_sadb_rx_lookup(ptr noundef %13, i32 noundef %11) #7
  %tobool8.not.i = icmp eq ptr %call7.i, null
  br i1 %tobool8.not.i, label %if.then17.i, label %if.end20.i, !prof !27

if.then17.i:                                      ; preds = %if.end.i14
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %ipsec6.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ipsec6.i, align 4
  %ipsec_rx_drop_sadb_miss.i = getelementptr inbounds %struct.mlx5e_ipsec, ptr %15, i32 0, i32 5, i32 1
  br label %if.then5

if.end20.i:                                       ; preds = %if.end.i14
  %active_extensions.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 13
  %16 = ptrtoint ptr %active_extensions.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %active_extensions.i.i.i.i, align 1
  %18 = and i8 %17, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.i.not.i.i.i = icmp eq i8 %18, 0
  br i1 %tobool.i.not.i.i.i, label %if.end20.i.skb_sec_path.exit.i_crit_edge, label %if.then.i.i.i

if.end20.i.skb_sec_path.exit.i_crit_edge:         ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_sec_path.exit.i

if.then.i.i.i:                                    ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #9
  %extensions.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 22
  %19 = ptrtoint ptr %extensions.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %extensions.i.i.i, align 8
  %arrayidx.i.i.i = getelementptr %struct.skb_ext, ptr %20, i32 0, i32 1, i32 1
  %21 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx.i.i.i, align 1
  %conv.i.i.i = zext i8 %22 to i32
  %shl.i.i.i = shl nuw nsw i32 %conv.i.i.i, 3
  %add.ptr.i.i.i = getelementptr i8, ptr %20, i32 %shl.i.i.i
  br label %skb_sec_path.exit.i

skb_sec_path.exit.i:                              ; preds = %if.then.i.i.i, %if.end20.i.skb_sec_path.exit.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %add.ptr.i.i.i, %if.then.i.i.i ], [ null, %if.end20.i.skb_sec_path.exit.i_crit_edge ]
  %23 = ptrtoint ptr %retval.0.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %retval.0.i.i.i, align 4
  %inc.i = add i32 %24, 1
  store i32 %inc.i, ptr %retval.0.i.i.i, align 4
  %arrayidx.i = getelementptr %struct.sec_path, ptr %retval.0.i.i.i, i32 0, i32 2, i32 %24
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call7.i, ptr %arrayidx.i, align 4
  %olen.i = getelementptr inbounds %struct.sec_path, ptr %retval.0.i.i.i, i32 0, i32 1
  %26 = ptrtoint ptr %olen.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %olen.i, align 4
  %inc22.i = add i32 %27, 1
  store i32 %inc22.i, ptr %olen.i, align 4
  %28 = ptrtoint ptr %active_extensions.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %active_extensions.i.i.i.i, align 1
  %30 = and i8 %29, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool.i.not.i.i.i.i = icmp eq i8 %30, 0
  br i1 %tobool.i.not.i.i.i.i, label %skb_sec_path.exit.i.xfrm_offload.exit.i_crit_edge, label %skb_sec_path.exit.i.i

skb_sec_path.exit.i.xfrm_offload.exit.i_crit_edge: ; preds = %skb_sec_path.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %xfrm_offload.exit.i

skb_sec_path.exit.i.i:                            ; preds = %skb_sec_path.exit.i
  %extensions.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 22
  %31 = ptrtoint ptr %extensions.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %extensions.i.i.i.i, align 8
  %arrayidx.i.i.i.i = getelementptr %struct.skb_ext, ptr %32, i32 0, i32 1, i32 1
  %33 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx.i.i.i.i, align 1
  %conv.i.i.i.i = zext i8 %34 to i32
  %shl.i.i.i.i = shl nuw nsw i32 %conv.i.i.i.i, 3
  %add.ptr.i.i.i.i = getelementptr i8, ptr %32, i32 %shl.i.i.i.i
  %tobool.not.i.i = icmp eq ptr %add.ptr.i.i.i.i, null
  br i1 %tobool.not.i.i, label %skb_sec_path.exit.i.i.xfrm_offload.exit.i_crit_edge, label %lor.lhs.false.i.i

skb_sec_path.exit.i.i.xfrm_offload.exit.i_crit_edge: ; preds = %skb_sec_path.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %xfrm_offload.exit.i

lor.lhs.false.i.i:                                ; preds = %skb_sec_path.exit.i.i
  %olen.i.i = getelementptr inbounds %struct.sec_path, ptr %add.ptr.i.i.i.i, i32 0, i32 1
  %35 = ptrtoint ptr %olen.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %olen.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool1.not.i.i = icmp eq i32 %36, 0
  br i1 %tobool1.not.i.i, label %lor.lhs.false.i.i.xfrm_offload.exit.i_crit_edge, label %lor.lhs.false2.i.i

lor.lhs.false.i.i.xfrm_offload.exit.i_crit_edge:  ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %xfrm_offload.exit.i

lor.lhs.false2.i.i:                               ; preds = %lor.lhs.false.i.i
  %37 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %add.ptr.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %36)
  %cmp.not.i.i = icmp eq i32 %38, %36
  br i1 %cmp.not.i.i, label %if.end.i.i, label %lor.lhs.false2.i.i.xfrm_offload.exit.i_crit_edge

lor.lhs.false2.i.i.xfrm_offload.exit.i_crit_edge: ; preds = %lor.lhs.false2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %xfrm_offload.exit.i

if.end.i.i:                                       ; preds = %lor.lhs.false2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i = add i32 %36, -1
  %arrayidx.i.i = getelementptr %struct.sec_path, ptr %add.ptr.i.i.i.i, i32 0, i32 3, i32 %sub.i.i
  br label %xfrm_offload.exit.i

xfrm_offload.exit.i:                              ; preds = %if.end.i.i, %lor.lhs.false2.i.i.xfrm_offload.exit.i_crit_edge, %lor.lhs.false.i.i.xfrm_offload.exit.i_crit_edge, %skb_sec_path.exit.i.i.xfrm_offload.exit.i_crit_edge, %skb_sec_path.exit.i.xfrm_offload.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %arrayidx.i.i, %if.end.i.i ], [ null, %lor.lhs.false2.i.i.xfrm_offload.exit.i_crit_edge ], [ null, %lor.lhs.false.i.i.xfrm_offload.exit.i_crit_edge ], [ null, %skb_sec_path.exit.i.i.xfrm_offload.exit.i_crit_edge ], [ null, %skb_sec_path.exit.i.xfrm_offload.exit.i_crit_edge ]
  %flags.i = getelementptr inbounds %struct.xfrm_offload, ptr %retval.0.i.i, i32 0, i32 1
  %39 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 2, ptr %flags.i, align 4
  %40 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %add.ptr, align 1
  %42 = zext i8 %41 to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.12)
  switch i8 %41, label %sw.default.i [
    i8 17, label %sw.bb.i
    i8 18, label %sw.bb36.i
    i8 23, label %sw.bb38.i
  ]

sw.bb.i:                                          ; preds = %xfrm_offload.exit.i
  %status.i = getelementptr inbounds %struct.xfrm_offload, ptr %retval.0.i.i, i32 0, i32 2
  %43 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 1, ptr %status.i, align 4
  %44 = ptrtoint ptr %ipsec6.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ipsec6.i, align 4
  %no_trailer.i = getelementptr inbounds %struct.mlx5e_ipsec, ptr %45, i32 0, i32 2
  %46 = ptrtoint ptr %no_trailer.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %no_trailer.i, align 4, !range !31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool25.not.i = icmp eq i8 %47, 0
  br i1 %tobool25.not.i, label %sw.bb.i.if.end6_crit_edge, label %if.then32.i, !prof !27

sw.bb.i.if.end6_crit_edge:                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.then32.i:                                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  %48 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 66, ptr %flags.i, align 4
  %49 = ptrtoint ptr %content.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %content.i, align 1
  %proto.i = getelementptr inbounds %struct.xfrm_offload, ptr %retval.0.i.i, i32 0, i32 3
  %51 = ptrtoint ptr %proto.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %50, ptr %proto.i, align 4
  br label %if.end6

sw.bb36.i:                                        ; preds = %xfrm_offload.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %status37.i = getelementptr inbounds %struct.xfrm_offload, ptr %retval.0.i.i, i32 0, i32 2
  %52 = ptrtoint ptr %status37.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 32, ptr %status37.i, align 4
  br label %if.end6

sw.bb38.i:                                        ; preds = %xfrm_offload.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %status39.i = getelementptr inbounds %struct.xfrm_offload, ptr %retval.0.i.i, i32 0, i32 2
  %53 = ptrtoint ptr %status39.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 128, ptr %status39.i, align 4
  br label %if.end6

sw.default.i:                                     ; preds = %xfrm_offload.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %54 = ptrtoint ptr %ipsec6.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ipsec6.i, align 4
  %ipsec_rx_drop_syndrome.i = getelementptr inbounds %struct.mlx5e_ipsec, ptr %55, i32 0, i32 5, i32 2
  br label %if.then5

if.then5:                                         ; preds = %sw.default.i, %if.then17.i, %if.then.i
  %ipsec_rx_drop_syndrome.i.sink22 = phi ptr [ %ipsec_rx_drop_syndrome.i, %sw.default.i ], [ %ipsec_rx_drop_sadb_miss.i, %if.then17.i ], [ %sw_stats.i, %if.then.i ]
  %call.i.i65.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ipsec_rx_drop_syndrome.i.sink22, i32 noundef 8) #7
  tail call void @generic_atomic64_add(i64 noundef 1, ptr noundef %ipsec_rx_drop_syndrome.i.sink22) #7
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #7
  br label %cleanup

if.end6:                                          ; preds = %sw.bb38.i, %sw.bb36.i, %if.then32.i, %sw.bb.i.if.end6_crit_edge
  %56 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %data.i, align 4
  %add.ptr.i17 = getelementptr i8, ptr %57, i32 8
  %58 = call ptr @memmove(ptr %add.ptr.i17, ptr %57, i32 12)
  %59 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %60)
  %cmp.i.i = icmp ult i32 %60, 8
  br i1 %cmp.i.i, label %if.end6.remove_metadata_hdr.exit_crit_edge, label %cond.false.i.i, !prof !27

if.end6.remove_metadata_hdr.exit_crit_edge:       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %remove_metadata_hdr.exit

cond.false.i.i:                                   ; preds = %if.end6
  %sub.i.i.i = add i32 %60, -8
  %61 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %sub.i.i.i, ptr %len.i, align 4
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %62 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i.i, i32 %63)
  %cmp.i.i.i = icmp ult i32 %sub.i.i.i, %63
  br i1 %cmp.i.i.i, label %do.body4.i.i.i, label %__skb_pull.exit.i.i, !prof !27

do.body4.i.i.i:                                   ; preds = %cond.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2398, 0\0A.popsection", ""() #7, !srcloc !32
  unreachable

__skb_pull.exit.i.i:                              ; preds = %cond.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %64 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %data.i, align 4
  %add.ptr.i.i.i18 = getelementptr i8, ptr %65, i32 8
  store ptr %add.ptr.i.i.i18, ptr %data.i, align 4
  br label %remove_metadata_hdr.exit

remove_metadata_hdr.exit:                         ; preds = %__skb_pull.exit.i.i, %if.end6.remove_metadata_hdr.exit_crit_edge
  %66 = ptrtoint ptr %cqe_bcnt to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %cqe_bcnt, align 4
  %sub = add i32 %67, -8
  store i32 %sub, ptr %cqe_bcnt, align 4
  br label %cleanup

cleanup:                                          ; preds = %remove_metadata_hdr.exit, %if.then5, %is_metadata_hdr_valid.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then5 ], [ %skb, %remove_metadata_hdr.exit ], [ %skb, %is_metadata_hdr_valid.exit.cleanup_crit_edge ], [ %skb, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5e_ipsec_offload_handle_rx_skb(ptr nocapture noundef readonly %netdev, ptr noundef %skb, ptr nocapture noundef readonly %cqe) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.mlx5_cqe64, ptr %cqe, i32 0, i32 15
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 4
  %call1 = tail call ptr @secpath_set(ptr noundef %skb) #7
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %if.then, label %if.end, !prof !27

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %ipsec = getelementptr i8, ptr %netdev, i32 30244
  %3 = ptrtoint ptr %ipsec to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ipsec, align 4
  %sw_stats = getelementptr inbounds %struct.mlx5e_ipsec, ptr %4, i32 0, i32 5
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sw_stats, i32 noundef 8) #7
  tail call void @generic_atomic64_add(i64 noundef 1, ptr noundef %sw_stats) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %2, 16777215
  %ipsec5 = getelementptr i8, ptr %netdev, i32 30244
  %5 = ptrtoint ptr %ipsec5 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ipsec5, align 4
  %call6 = tail call ptr @mlx5e_ipsec_sadb_rx_lookup(ptr noundef %6, i32 noundef %and) #7
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %if.then16, label %if.end19, !prof !27

if.then16:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %ipsec5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ipsec5, align 4
  %ipsec_rx_drop_sadb_miss = getelementptr inbounds %struct.mlx5e_ipsec, ptr %8, i32 0, i32 5, i32 1
  %call.i.i104 = tail call zeroext i1 @__kasan_check_write(ptr noundef %ipsec_rx_drop_sadb_miss, i32 noundef 8) #7
  tail call void @generic_atomic64_add(i64 noundef 1, ptr noundef %ipsec_rx_drop_sadb_miss) #7
  br label %cleanup

if.end19:                                         ; preds = %if.end
  %active_extensions.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 13
  %9 = ptrtoint ptr %active_extensions.i.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %active_extensions.i.i.i, align 1
  %11 = and i8 %10, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.i.not.i.i = icmp eq i8 %11, 0
  br i1 %tobool.i.not.i.i, label %if.end19.skb_sec_path.exit_crit_edge, label %if.then.i.i

if.end19.skb_sec_path.exit_crit_edge:             ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_sec_path.exit

if.then.i.i:                                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  %extensions.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 22
  %12 = ptrtoint ptr %extensions.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %extensions.i.i, align 8
  %arrayidx.i.i = getelementptr %struct.skb_ext, ptr %13, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i = zext i8 %15 to i32
  %shl.i.i = shl nuw nsw i32 %conv.i.i, 3
  %add.ptr.i.i = getelementptr i8, ptr %13, i32 %shl.i.i
  br label %skb_sec_path.exit

skb_sec_path.exit:                                ; preds = %if.then.i.i, %if.end19.skb_sec_path.exit_crit_edge
  %retval.0.i.i = phi ptr [ %add.ptr.i.i, %if.then.i.i ], [ null, %if.end19.skb_sec_path.exit_crit_edge ]
  %16 = ptrtoint ptr %retval.0.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %retval.0.i.i, align 4
  %inc = add i32 %17, 1
  store i32 %inc, ptr %retval.0.i.i, align 4
  %arrayidx = getelementptr %struct.sec_path, ptr %retval.0.i.i, i32 0, i32 2, i32 %17
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call6, ptr %arrayidx, align 4
  %olen = getelementptr inbounds %struct.sec_path, ptr %retval.0.i.i, i32 0, i32 1
  %19 = ptrtoint ptr %olen to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %olen, align 4
  %inc21 = add i32 %20, 1
  store i32 %inc21, ptr %olen, align 4
  %21 = ptrtoint ptr %active_extensions.i.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %active_extensions.i.i.i, align 1
  %23 = and i8 %22, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.i.not.i.i.i = icmp eq i8 %23, 0
  br i1 %tobool.i.not.i.i.i, label %skb_sec_path.exit.xfrm_offload.exit_crit_edge, label %skb_sec_path.exit.i

skb_sec_path.exit.xfrm_offload.exit_crit_edge:    ; preds = %skb_sec_path.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %xfrm_offload.exit

skb_sec_path.exit.i:                              ; preds = %skb_sec_path.exit
  %extensions.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 22
  %24 = ptrtoint ptr %extensions.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %extensions.i.i.i, align 8
  %arrayidx.i.i.i = getelementptr %struct.skb_ext, ptr %25, i32 0, i32 1, i32 1
  %26 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx.i.i.i, align 1
  %conv.i.i.i = zext i8 %27 to i32
  %shl.i.i.i = shl nuw nsw i32 %conv.i.i.i, 3
  %add.ptr.i.i.i = getelementptr i8, ptr %25, i32 %shl.i.i.i
  %tobool.not.i = icmp eq ptr %add.ptr.i.i.i, null
  br i1 %tobool.not.i, label %skb_sec_path.exit.i.xfrm_offload.exit_crit_edge, label %lor.lhs.false.i

skb_sec_path.exit.i.xfrm_offload.exit_crit_edge:  ; preds = %skb_sec_path.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %xfrm_offload.exit

lor.lhs.false.i:                                  ; preds = %skb_sec_path.exit.i
  %olen.i = getelementptr inbounds %struct.sec_path, ptr %add.ptr.i.i.i, i32 0, i32 1
  %28 = ptrtoint ptr %olen.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %olen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool1.not.i = icmp eq i32 %29, 0
  br i1 %tobool1.not.i, label %lor.lhs.false.i.xfrm_offload.exit_crit_edge, label %lor.lhs.false2.i

lor.lhs.false.i.xfrm_offload.exit_crit_edge:      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %xfrm_offload.exit

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %30 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %add.ptr.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %29)
  %cmp.not.i = icmp eq i32 %31, %29
  br i1 %cmp.not.i, label %if.end.i, label %lor.lhs.false2.i.xfrm_offload.exit_crit_edge

lor.lhs.false2.i.xfrm_offload.exit_crit_edge:     ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %xfrm_offload.exit

if.end.i:                                         ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i = add i32 %29, -1
  %arrayidx.i = getelementptr %struct.sec_path, ptr %add.ptr.i.i.i, i32 0, i32 3, i32 %sub.i
  br label %xfrm_offload.exit

xfrm_offload.exit:                                ; preds = %if.end.i, %lor.lhs.false2.i.xfrm_offload.exit_crit_edge, %lor.lhs.false.i.xfrm_offload.exit_crit_edge, %skb_sec_path.exit.i.xfrm_offload.exit_crit_edge, %skb_sec_path.exit.xfrm_offload.exit_crit_edge
  %retval.0.i = phi ptr [ %arrayidx.i, %if.end.i ], [ null, %lor.lhs.false2.i.xfrm_offload.exit_crit_edge ], [ null, %lor.lhs.false.i.xfrm_offload.exit_crit_edge ], [ null, %skb_sec_path.exit.i.xfrm_offload.exit_crit_edge ], [ null, %skb_sec_path.exit.xfrm_offload.exit_crit_edge ]
  %flags = getelementptr inbounds %struct.xfrm_offload, ptr %retval.0.i, i32 0, i32 1
  %32 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 2, ptr %flags, align 4
  %shr = lshr i32 %2, 24
  %and23 = and i32 %shr, 127
  %33 = zext i32 %and23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %and23, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb74
    i32 2, label %sw.bb76
  ]

sw.bb:                                            ; preds = %xfrm_offload.exit
  %status = getelementptr inbounds %struct.xfrm_offload, ptr %retval.0.i, i32 0, i32 2
  %34 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 1, ptr %status, align 4
  %35 = ptrtoint ptr %ipsec5 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ipsec5, align 4
  %no_trailer = getelementptr inbounds %struct.mlx5e_ipsec, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %no_trailer to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %no_trailer, align 4, !range !31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool25.not = icmp eq i8 %38, 0
  br i1 %tobool25.not, label %sw.bb.cleanup_crit_edge, label %land.rhs

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.rhs:                                         ; preds = %sw.bb
  %.b102 = load i1, ptr @mlx5e_ipsec_offload_handle_rx_skb.__already_done, align 1
  br i1 %.b102, label %land.rhs.if.then71_crit_edge, label %if.then40, !prof !28

land.rhs.if.then71_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then71

if.then40:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @mlx5e_ipsec_offload_handle_rx_skb.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 531, i32 noundef 9, ptr noundef null) #7
  br label %if.then71

if.then71:                                        ; preds = %if.then40, %land.rhs.if.then71_crit_edge
  %39 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %flags, align 4
  %or = or i32 %40, 64
  store i32 %or, ptr %flags, align 4
  br label %cleanup

sw.bb74:                                          ; preds = %xfrm_offload.exit
  call void @__sanitizer_cov_trace_pc() #9
  %status75 = getelementptr inbounds %struct.xfrm_offload, ptr %retval.0.i, i32 0, i32 2
  %41 = ptrtoint ptr %status75 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 32, ptr %status75, align 4
  br label %cleanup

sw.bb76:                                          ; preds = %xfrm_offload.exit
  call void @__sanitizer_cov_trace_pc() #9
  %status77 = getelementptr inbounds %struct.xfrm_offload, ptr %retval.0.i, i32 0, i32 2
  %42 = ptrtoint ptr %status77 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 64, ptr %status77, align 4
  br label %cleanup

sw.default:                                       ; preds = %xfrm_offload.exit
  call void @__sanitizer_cov_trace_pc() #9
  %43 = ptrtoint ptr %ipsec5 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ipsec5, align 4
  %ipsec_rx_drop_syndrome = getelementptr inbounds %struct.mlx5e_ipsec, ptr %44, i32 0, i32 5, i32 2
  %call.i.i105 = tail call zeroext i1 @__kasan_check_write(ptr noundef %ipsec_rx_drop_syndrome, i32 noundef 8) #7
  tail call void @generic_atomic64_add(i64 noundef 1, ptr noundef %ipsec_rx_drop_syndrome) #7
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %sw.bb76, %sw.bb74, %if.then71, %sw.bb.cleanup_crit_edge, %if.then16, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @secpath_set(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5e_ipsec_sadb_rx_lookup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync)
define dso_local void @mlx5e_ipsec_build_inverse_table() local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  store i16 -1, ptr getelementptr inbounds ([2048 x i16], ptr @mlx5e_ipsec_inverse_table, i32 0, i32 1), align 2
  br label %if.else174.i.i

if.else174.i.i:                                   ; preds = %if.else174.i.i.if.else174.i.i_crit_edge, %entry
  %mss.09 = phi i32 [ 2, %entry ], [ %inc, %if.else174.i.i.if.else174.i.i_crit_edge ]
  %0 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mss.09, i64 4294967296) #10, !srcloc !33
  %asmresult1.i.i.i = extractvalue { i64, i64 } %0, 1
  %extract15 = lshr i64 %asmresult1.i.i.i, 16
  %extract.t16 = trunc i64 %extract15 to i16
  %arrayidx = getelementptr [2048 x i16], ptr @mlx5e_ipsec_inverse_table, i32 0, i32 %mss.09
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 %extract.t16, ptr %arrayidx, align 2
  %inc = add nuw nsw i32 %mss.09, 1
  %exitcond.not = icmp eq i32 %inc, 2048
  br i1 %exitcond.not, label %for.end, label %if.else174.i.i.if.else174.i.i_crit_edge

if.else174.i.i.if.else174.i.i_crit_edge:          ; preds = %if.else174.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else174.i.i

for.end:                                          ; preds = %if.else174.i.i
  call void @__sanitizer_cov_trace_pc() #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_add(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip_send_check(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___pskb_trim(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_expand_head(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !11, !12, !14, !15, !17}
!llvm.module.flags = !{!18, !19, !20, !21, !22, !23, !24, !25}
!llvm.ident = !{!26}

!0 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_accel/ipsec_rxtx.c", i32 531, i32 7}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @mlx5e_ipsec_inverse_table, !4, !"mlx5e_ipsec_inverse_table", i1 false, i1 false}
!4 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_accel/ipsec_rxtx.c", i32 81, i32 15}
!5 = distinct !{null, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../include/linux/skbuff.h", i32 2789, i32 6}
!7 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_accel/ipsec_rxtx.c", i32 258, i32 3}
!9 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @mlx5e_ipsec_set_metadata.__UNIQUE_ID_ddebug640, !8, !"__UNIQUE_ID_ddebug640", i1 false, i1 false}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_accel/ipsec_rxtx.c", i32 263, i32 3}
!14 = !{ptr @mlx5e_ipsec_set_metadata.__UNIQUE_ID_ddebug641, !13, !"__UNIQUE_ID_ddebug641", i1 false, i1 false}
!15 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_accel/ipsec_rxtx.c", i32 275, i32 2}
!17 = !{ptr @mlx5e_ipsec_set_metadata.__UNIQUE_ID_ddebug642, !16, !"__UNIQUE_ID_ddebug642", i1 false, i1 false}
!18 = !{i32 1, !"wchar_size", i32 2}
!19 = !{i32 1, !"min_enum_size", i32 4}
!20 = !{i32 8, !"branch-target-enforcement", i32 0}
!21 = !{i32 8, !"sign-return-address", i32 0}
!22 = !{i32 8, !"sign-return-address-all", i32 0}
!23 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!24 = !{i32 7, !"uwtable", i32 1}
!25 = !{i32 7, !"frame-pointer", i32 2}
!26 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!27 = !{!"branch_weights", i32 1, i32 2000}
!28 = !{!"branch_weights", i32 2000, i32 1}
!29 = !{!"auto-init"}
!30 = !{i64 2148752150, i64 2148752155, i64 2148752168, i64 2148752212, i64 2148752246, i64 2148752267}
!31 = !{i8 0, i8 2}
!32 = !{i64 2154704254, i64 2154704742, i64 2154704291, i64 2154704347, i64 2154704381, i64 2154704405, i64 2154704446, i64 2154704467, i64 2154704495, i64 2154704529}
!33 = !{i64 2148660869, i64 2148661149, i64 2148661483, i64 2148661817}
