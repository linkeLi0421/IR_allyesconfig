; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlx5/core/en_accel/fs_tcp.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlx5/core/en_accel/fs_tcp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.mlx5_flow_destination = type { i32, %union.anon.3 }
%union.anon.3 = type { %struct.anon.4 }
%struct.anon.4 = type { i16, i16, ptr, i8 }
%struct.mlx5_flow_act = type { i32, ptr, ptr, %union.anon.219, i32, [2 x %struct.mlx5_fs_vlan], ptr }
%union.anon.219 = type { i32 }
%struct.mlx5_fs_vlan = type { i16, i16, i8 }
%struct.mlx5e_priv = type { ptr, ptr, [8 x i32], %struct.mlx5e_dcbx_dp, i32, i32, %struct.mutex, [48 x i8], %struct.mlx5e_rq, %struct.mlx5e_channels, [2 x [8 x i32]], ptr, ptr, %struct.mlx5e_flow_steering, ptr, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.mlx5_nb, ptr, ptr, ptr, %struct.mlx5e_stats, ptr, [12 x i8], %struct.mlx5e_channel_stats, %struct.mlx5e_ptp_stats, i16, i16, i8, i8, i8, %struct.hwtstamp_config, i16, i16, %struct.notifier_block, %struct.notifier_block, i32, %struct.udp_tunnel_nic_info, %struct.mlx5e_dcbx, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mlx5e_xsk, %struct.mlx5e_scratchpad, %struct.mlx5e_htb, ptr, [16 x i8] }
%struct.mlx5e_dcbx_dp = type { [64 x i8], i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mlx5e_rq = type { %union.anon.181, %struct.anon.195, ptr, ptr, ptr, [48 x i8], %struct.mlx5e_cq, %struct.mlx5e_cq_decomp, %struct.mlx5e_page_cache, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.dim, ptr, ptr, [1 x i32], ptr, ptr, %struct.work_struct, %struct.mlx5_wq_ctrl, i32, i8, i32, ptr, i32, %struct.mlx5e_dma_info, [72 x i8], %struct.xdp_rxq_info, ptr, [124 x i8] }
%union.anon.181 = type { %struct.anon.188 }
%struct.anon.188 = type { %struct.mlx5_wq_ll, %struct.mlx5e_umr_wqe, ptr, ptr, i16, i16, i8, i8, i8, i8, ptr }
%struct.mlx5_wq_ll = type { %struct.mlx5_frag_buf_ctrl, ptr, ptr, i16, i16, i16 }
%struct.mlx5_frag_buf_ctrl = type { ptr, i32, i16, i16, i8, i8, i8 }
%struct.mlx5e_umr_wqe = type { %struct.mlx5_wqe_ctrl_seg, %struct.mlx5_wqe_umr_ctrl_seg, %struct.mlx5_mkey_seg, %union.anon.190 }
%struct.mlx5_wqe_ctrl_seg = type { i32, i32, i8, [2 x i8], i8, %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.mlx5_wqe_umr_ctrl_seg = type { i8, [3 x i8], i16, %union.anon.189, i64, i32, [28 x i8] }
%union.anon.189 = type { i16 }
%struct.mlx5_mkey_seg = type { i8, i8, i8, i8, i32, [4 x i8], i32, i64, i64, i32, [16 x i8], i32, [3 x i8], i8, [4 x i8] }
%union.anon.190 = type { %struct.anon.191 }
%struct.anon.191 = type { %struct.anon.192, [0 x %struct.mlx5_mtt] }
%struct.anon.192 = type {}
%struct.mlx5_mtt = type { i64 }
%struct.anon.195 = type { i16, i32, i8 }
%struct.mlx5e_cq = type { %struct.mlx5_cqwq, i16, ptr, %struct.mlx5_core_cq, ptr, ptr, ptr, ptr, %struct.mlx5_wq_ctrl, [24 x i8] }
%struct.mlx5_cqwq = type { %struct.mlx5_frag_buf_ctrl, ptr, i32 }
%struct.mlx5_core_cq = type { i32, i32, ptr, ptr, ptr, %struct.refcount_struct, %struct.completion, i32, i32, ptr, ptr, i32, i32, ptr, i32, %struct.anon.178, i32, %struct.list_head, ptr, i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.anon.178 = type { %struct.list_head, ptr, ptr }
%struct.mlx5e_cq_decomp = type { %struct.mlx5_cqe64, [8 x %struct.mlx5_mini_cqe8], i8, i16, i16, [122 x i8] }
%struct.mlx5_cqe64 = type { i8, i8, i16, %union.anon.184, i32, i8, i8, [2 x i8], i16, i16, i32, i8, i8, i16, i32, %union.anon.187, [4 x i8], i32, i32, i32, i32, i16, i8, i8 }
%union.anon.184 = type { %struct.anon.185 }
%struct.anon.185 = type { i8, i8, i16, i32 }
%union.anon.187 = type { i32 }
%struct.mlx5_mini_cqe8 = type { %union.anon.196, i32 }
%union.anon.196 = type { i32 }
%struct.mlx5e_page_cache = type { i32, i32, [256 x %struct.mlx5e_dma_info] }
%struct.dim = type { i8, %struct.dim_stats, %struct.dim_sample, %struct.dim_sample, %struct.work_struct, ptr, i8, i8, i8, i8, i8, i8 }
%struct.dim_stats = type { i32, i32, i32, i32, i32 }
%struct.dim_sample = type { i64, i32, i32, i16, i32 }
%struct.mlx5_wq_ctrl = type { ptr, %struct.mlx5_frag_buf, %struct.mlx5_db }
%struct.mlx5_frag_buf = type { ptr, i32, i32, i8 }
%struct.mlx5_db = type { ptr, %union.anon.179, i32, i32 }
%union.anon.179 = type { ptr }
%struct.mlx5e_dma_info = type { i32, %union.anon.183 }
%union.anon.183 = type { ptr }
%struct.xdp_rxq_info = type { ptr, i32, i32, %struct.xdp_mem_info, i32, [104 x i8] }
%struct.xdp_mem_info = type { i32, i32 }
%struct.mlx5e_channels = type { ptr, ptr, i32, %struct.mlx5e_params }
%struct.mlx5e_params = type { i8, i8, i8, i16, %struct.anon.210, i8, i8, %struct.dim_cq_moder, %struct.dim_cq_moder, %struct.mlx5e_packet_merge_param, i8, i8, i8, i8, i8, i32, ptr, ptr, i32, i32, i8 }
%struct.anon.210 = type { i16, i8, [16 x %struct.netdev_tc_txq], %struct.anon.211 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.anon.211 = type { ptr }
%struct.dim_cq_moder = type { i16, i16, i16, i8 }
%struct.mlx5e_packet_merge_param = type { i32, i32, %struct.anon.212 }
%struct.anon.212 = type { i8, i8 }
%struct.mlx5e_flow_steering = type { ptr, ptr, %struct.mlx5e_ethtool_steering, %struct.mlx5e_tc_table, %struct.mlx5e_promisc_table, ptr, %struct.mlx5e_l2_table, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mlx5e_ethtool_steering = type { [7 x %struct.mlx5e_ethtool_table], [4 x %struct.mlx5e_ethtool_table], %struct.list_head, i32 }
%struct.mlx5e_ethtool_table = type { ptr, i32 }
%struct.mlx5e_tc_table = type { %struct.mutex, ptr, ptr, ptr, %struct.rhashtable, %struct.mod_hdr_tbl, %struct.mutex, [256 x %struct.hlist_head], %struct.notifier_block, %struct.netdev_net_notifier, ptr, ptr }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
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
%struct.sock_common = type { %union.anon.15, %union.anon.17, %union.anon.18, i16, i8, i8, i32, %union.anon.20, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.119, [0 x i32], %union.anon.120, i16, i16, %union.anon.121, %struct.refcount_struct, [0 x i32], %union.anon.122 }
%union.anon.15 = type { i64 }
%union.anon.17 = type { i32 }
%union.anon.18 = type { i32 }
%union.anon.20 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.56 }
%union.anon.56 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.119 = type { i32 }
%union.anon.120 = type { %struct.hlist_node }
%union.anon.121 = type { i32 }
%union.anon.122 = type { i32 }
%struct.mlx5_flow_spec = type { i8, [128 x i32], [128 x i32], %struct.mlx5_flow_context }
%struct.mlx5_flow_context = type { i32, i32, i32 }
%struct.anon.16 = type { i32, i32 }
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.123, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.124, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.125, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.123 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.124 = type { ptr }
%union.anon.125 = type { ptr }
%struct.sk_buff_head = type { %union.anon.60, i32, %struct.spinlock }
%union.anon.60 = type { %struct.anon.61 }
%struct.anon.61 = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.page_frag = type { ptr, i16, i16 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.callback_head = type { ptr, ptr }
%struct.inet_cork_full = type { %struct.inet_cork, %struct.flowi }
%struct.inet_cork = type { i32, i32, ptr, i32, i32, ptr, i8, i8, i16, i8, i16, i64, i32 }
%struct.flowi = type { %union.anon.51 }
%union.anon.51 = type { %struct.flowi6 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.mlx5e_accel_fs_tcp = type { [2 x %struct.mlx5e_flow_table], [2 x ptr] }
%struct.mlx5_core_dev = type { ptr, i32, ptr, %struct.mutex, i32, i8, [64 x i8], %struct.mlx5_cmd, %struct.anon.166, ptr, i64, i32, ptr, i32, i32, %struct.mutex, i32, %struct.mlx5_priv, %struct.mlx5_profile, i32, %struct.mlx5e_resources, ptr, ptr, ptr, %struct.anon.168, ptr, ptr, %struct.mlx5_clock, ptr, ptr, ptr, i32, ptr }
%struct.mlx5_cmd = type { %struct.mlx5_nb, i32, ptr, i32, i32, ptr, i32, i16, i8, i8, i32, i32, ptr, %struct.spinlock, %struct.spinlock, i8, i32, [32 x i8], ptr, %struct.semaphore, %struct.semaphore, i32, i16, [32 x ptr], ptr, %struct.mlx5_cmd_debug, [5 x %struct.cmd_msg_cache], i32, ptr }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.mlx5_cmd_debug = type { ptr, ptr, ptr, i8, i16, i16 }
%struct.cmd_msg_cache = type { %struct.spinlock, %struct.list_head, i32, i32 }
%struct.anon.166 = type { [38 x ptr], [20 x i32], [3 x [18 x i32]], [64 x i32], [18 x i32], i8 }
%struct.mlx5_priv = type { ptr, ptr, %struct.mlx5_nb, ptr, %struct.xarray, i32, %struct.atomic_t, %struct.list_head, i32, i32, %struct.mlx5_core_health, %struct.list_head, ptr, ptr, ptr, ptr, %struct.mutex, i32, %struct.mutex, %struct.list_head, ptr, %struct.list_head, %struct.spinlock, ptr, i32, ptr, ptr, ptr, ptr, %struct.mlx5_core_sriov, ptr, i32, ptr, ptr, %struct.mlx5_core_roce, %struct.mlx5_fc_stats, %struct.mlx5_rl_table, ptr, %struct.mlx5_bfreg_data, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.mlx5_core_health = type { ptr, ptr, %struct.timer_list, i32, i32, i8, i32, i32, %struct.spinlock, ptr, i32, %struct.work_struct, %struct.work_struct, ptr, ptr, %struct.delayed_work }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.mlx5_core_sriov = type { ptr, i32, i16 }
%struct.mlx5_core_roce = type { ptr, ptr, ptr }
%struct.mlx5_fc_stats = type { %struct.spinlock, %struct.idr, %struct.list_head, %struct.llist_head, %struct.llist_head, ptr, %struct.delayed_work, i32, i32, ptr, i32, i32, i8, i32, %struct.mlx5_fc_pool }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.mlx5_fc_pool = type { ptr, %struct.mutex, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32 }
%struct.mlx5_rl_table = type { %struct.mutex, i16, i32, i32, ptr, i64 }
%struct.mlx5_bfreg_data = type { %struct.mlx5_bfreg_head, %struct.mlx5_bfreg_head }
%struct.mlx5_bfreg_head = type { %struct.mutex, %struct.list_head }
%struct.mlx5_profile = type { i64, i8, [23 x %struct.anon.167] }
%struct.anon.167 = type { i32, i32 }
%struct.mlx5e_resources = type { %struct.mlx5e_hw_objs, %struct.devlink_port, ptr }
%struct.mlx5e_hw_objs = type { i32, %struct.mlx5_td, i32, %struct.mlx5_sq_bfreg }
%struct.mlx5_td = type { %struct.mutex, %struct.list_head, i32 }
%struct.mlx5_sq_bfreg = type { ptr, ptr, i8, i32, i32 }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.153 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.153 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%struct.anon.168 = type { %struct.mlx5_rsvd_gids, i32 }
%struct.mlx5_rsvd_gids = type { i32, i32, %struct.ida }
%struct.ida = type { %struct.xarray }
%struct.mlx5_clock = type { %struct.mlx5_nb, %struct.seqlock_t, %struct.hwtstamp_config, ptr, %struct.ptp_clock_info, %struct.mlx5_pps, %struct.mlx5_timer }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mlx5_pps = type { [8 x i8], %struct.work_struct, [8 x i64], i8 }
%struct.mlx5_timer = type { %struct.cyclecounter, %struct.timecounter, i32, i32, %struct.delayed_work }
%struct.cyclecounter = type { ptr, i64, i32, i32 }
%struct.timecounter = type { ptr, i64, i64, i64, i64 }
%struct.mlx5_flow_table_attr = type { i32, i32, i32, i32, ptr, %struct.anon.246 }
%struct.anon.246 = type { i32, i32 }
%struct.mlx5_flow_table = type { %struct.fs_node, %struct.mlx5_fs_dr_table, i32, i16, i32, i32, i32, i32, %struct.anon, %struct.mutex, %struct.list_head, i32, %struct.rhltable, i32, ptr }
%struct.fs_node = type { %struct.list_head, %struct.list_head, i32, ptr, ptr, %struct.rw_semaphore, %struct.refcount_struct, i8, ptr, ptr, %struct.atomic_t }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mlx5_fs_dr_table = type { ptr, ptr }
%struct.anon = type { i8, i32, i32, i32, i32 }
%struct.rhltable = type { %struct.rhashtable }

@.str = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s flow is %pI4:%d -> %pI4:%d\0A\00", [33 x i8] zeroinitializer }, align 32
@__func__.mlx5e_accel_fs_add_sk = private unnamed_addr constant [22 x i8] c"mlx5e_accel_fs_add_sk\00", align 1
@.str.1 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"mlx5_add_flow_rules() failed, flow is %ld\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"%s: modify ttc[%d] default destination failed, err(%d)\0A\00", [40 x i8] zeroinitializer }, align 32
@__func__.accel_fs_tcp_disable = private unnamed_addr constant [21 x i8] c"accel_fs_tcp_disable\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@accel_fs_tcp_create_table.__UNIQUE_ID_ddebug659 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, i8 0, i8 72, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mlx5_core\00", [22 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"accel_fs_tcp_create_table\00", [38 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"drivers/net/ethernet/mellanox/mlx5/core/en_accel/fs_tcp.c\00", [38 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Created fs accel table id %u level %u\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"%s: add default rule failed, accel_fs type=%d, err %d\0A\00", [41 x i8] zeroinitializer }, align 32
@__func__.accel_fs_tcp_add_default_rule = private unnamed_addr constant [30 x i8] c"accel_fs_tcp_add_default_rule\00", align 1
@.str.8 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"%s: modify ttc[%d] destination to accel failed, err(%d)\0A\00", [39 x i8] zeroinitializer }, align 32
@__func__.accel_fs_tcp_enable = private unnamed_addr constant [20 x i8] c"accel_fs_tcp_enable\00", align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.9 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 97, i32 3 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 143, i32 28 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 313, i32 8 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 287, i32 2 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 169, i32 7 }
@___asan_gen_.34 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.35 = private constant [61 x i8] c"../drivers/net/ethernet/mellanox/mlx5/core/en_accel/fs_tcp.c\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 335, i32 8 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5e_accel_fs_del_sk(ptr noundef %rule) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mlx5_del_flow_rules(ptr noundef %rule) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_del_flow_rules(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mlx5e_accel_fs_add_sk(ptr nocapture noundef readonly %priv, ptr noundef %sk, i32 noundef %tirn, i32 noundef %flow_tag) local_unnamed_addr #0 align 64 {
entry:
  %dest = alloca %struct.mlx5_flow_destination, align 4
  %flow_act = alloca %struct.mlx5_flow_act, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %dest) #6
  %0 = call ptr @memset(ptr %dest, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %flow_act) #6
  %1 = getelementptr inbounds i8, ptr %flow_act, i32 4
  %2 = call ptr @memset(ptr %1, i32 0, i32 32)
  %3 = ptrtoint ptr %flow_act to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 4, ptr %flow_act, align 4
  %call.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef 1040, i32 noundef 3520, i32 noundef -1) #9
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %accel_tcp = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 13, i32 10
  %4 = ptrtoint ptr %accel_tcp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %accel_tcp, align 4
  %6 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %call.i.i, align 4
  %skc_family = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 3
  %7 = ptrtoint ptr %skc_family to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %skc_family, align 8
  %9 = zext i16 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i16 %8, label %if.end.out_crit_edge [
    i16 2, label %sw.bb
    i16 10, label %sw.bb17
  ]

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

sw.bb:                                            ; preds = %if.end
  %add.ptr.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i, i32 0, i32 1, i32 4
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %add.ptr.i, align 4
  %add.ptr10.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i, i32 0, i32 2, i32 4
  %12 = ptrtoint ptr %add.ptr10.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr10.i, align 4
  %or27.i = or i32 %11, -16769536
  store i32 %or27.i, ptr %add.ptr.i, align 4
  %or13.i = and i32 %13, 16769535
  %or44.i = or i32 %or13.i, 100665344
  store i32 %or44.i, ptr %add.ptr10.i, align 4
  %add.ptr52.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i, i32 0, i32 2, i32 11
  %14 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sk, align 8
  %16 = ptrtoint ptr %add.ptr52.i to i32
  call void @__asan_storeN_noabort(i32 %16, i32 4)
  store i32 %15, ptr %add.ptr52.i, align 1
  %add.ptr56.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i, i32 0, i32 2, i32 15
  %skc_rcv_saddr.i = getelementptr inbounds %struct.anon.16, ptr %sk, i32 0, i32 1
  %17 = ptrtoint ptr %skc_rcv_saddr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %skc_rcv_saddr.i, align 4
  %19 = ptrtoint ptr %add.ptr56.i to i32
  call void @__asan_storeN_noabort(i32 %19, i32 4)
  store i32 %18, ptr %add.ptr56.i, align 1
  %add.ptr66.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i, i32 0, i32 1, i32 11
  %20 = ptrtoint ptr %add.ptr66.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %add.ptr66.i, align 4
  %add.ptr80.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i, i32 0, i32 1, i32 15
  %21 = ptrtoint ptr %add.ptr80.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %add.ptr80.i, align 4
  %msglevel = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 4
  %22 = ptrtoint ptr %msglevel to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %msglevel, align 4
  %and = and i32 %23, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %sw.bb.sw.epilog_crit_edge, label %if.then3

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then3:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %netdev = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 22
  %24 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %netdev, align 4
  %inet_sport = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 6
  %26 = ptrtoint ptr %inet_sport to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %inet_sport, align 8
  %conv8 = zext i16 %27 to i32
  %28 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 2
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %28, align 4
  %conv15 = zext i16 %30 to i32
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %25, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.mlx5e_accel_fs_add_sk, ptr noundef %skc_rcv_saddr.i, i32 noundef %conv8, ptr noundef %sk, i32 noundef %conv15) #10
  br label %sw.epilog

sw.bb17:                                          ; preds = %if.end
  %skc_ipv6only = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 5
  %31 = ptrtoint ptr %skc_ipv6only to i32
  call void @__asan_load1_noabort(i32 %31)
  %bf.load = load i8, ptr %skc_ipv6only, align 1
  %32 = and i8 %bf.load, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool19.not = icmp eq i8 %32, 0
  br i1 %tobool19.not, label %land.lhs.true, label %sw.bb17.if.else_crit_edge

sw.bb17.if.else_crit_edge:                        ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

land.lhs.true:                                    ; preds = %sw.bb17
  %skc_v6_daddr = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 10
  %call.i = tail call i32 @__ipv6_addr_type(ptr noundef %skc_v6_daddr) #6
  %and.i = and i32 %call.i, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %and.i)
  %cmp = icmp eq i32 %and.i, 4096
  br i1 %cmp, label %if.then23, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.then23:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i149 = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i, i32 0, i32 1, i32 4
  %33 = ptrtoint ptr %add.ptr.i149 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %add.ptr.i149, align 4
  %add.ptr10.i150 = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i, i32 0, i32 2, i32 4
  %35 = ptrtoint ptr %add.ptr10.i150 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %add.ptr10.i150, align 4
  %or27.i151 = or i32 %34, -16769536
  store i32 %or27.i151, ptr %add.ptr.i149, align 4
  %or13.i152 = and i32 %36, 16769535
  %or44.i153 = or i32 %or13.i152, 100665344
  store i32 %or44.i153, ptr %add.ptr10.i150, align 4
  %add.ptr52.i154 = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i, i32 0, i32 2, i32 11
  %37 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %sk, align 8
  %39 = ptrtoint ptr %add.ptr52.i154 to i32
  call void @__asan_storeN_noabort(i32 %39, i32 4)
  store i32 %38, ptr %add.ptr52.i154, align 1
  %add.ptr56.i155 = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i, i32 0, i32 2, i32 15
  %skc_rcv_saddr.i156 = getelementptr inbounds %struct.anon.16, ptr %sk, i32 0, i32 1
  %40 = ptrtoint ptr %skc_rcv_saddr.i156 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %skc_rcv_saddr.i156, align 4
  %42 = ptrtoint ptr %add.ptr56.i155 to i32
  call void @__asan_storeN_noabort(i32 %42, i32 4)
  store i32 %41, ptr %add.ptr56.i155, align 1
  %add.ptr66.i157 = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i, i32 0, i32 1, i32 11
  %43 = ptrtoint ptr %add.ptr66.i157 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 -1, ptr %add.ptr66.i157, align 4
  %add.ptr80.i158 = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i, i32 0, i32 1, i32 15
  %44 = ptrtoint ptr %add.ptr80.i158 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 -1, ptr %add.ptr80.i158, align 4
  br label %sw.epilog

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %sw.bb17.if.else_crit_edge
  %add.ptr.i159 = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i, i32 0, i32 1, i32 4
  %45 = ptrtoint ptr %add.ptr.i159 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %add.ptr.i159, align 4
  %add.ptr10.i160 = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i, i32 0, i32 2, i32 4
  %47 = ptrtoint ptr %add.ptr10.i160 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %add.ptr10.i160, align 4
  %or27.i161 = or i32 %46, -16769536
  store i32 %or27.i161, ptr %add.ptr.i159, align 4
  %or13.i162 = and i32 %48, 16769535
  %or44.i163 = or i32 %or13.i162, 100666368
  store i32 %or44.i163, ptr %add.ptr10.i160, align 4
  %add.ptr52.i164 = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i, i32 0, i32 2, i32 8
  %skc_v6_daddr.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 10
  %49 = call ptr @memcpy(ptr %add.ptr52.i164, ptr %skc_v6_daddr.i, i32 16)
  %skc_state.i.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %50 = ptrtoint ptr %skc_state.i.i.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load volatile i8, ptr %skc_state.i.i.i, align 2
  %conv.i.i.i = zext i8 %51 to i32
  %shl.i.i.i = shl nuw i32 1, %conv.i.i.i
  %and.i.i.i = and i32 %shl.i.i.i, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %if.else.accel_fs_tcp_set_ipv6_flow.exit_crit_edge, label %cond.true.i.i

if.else.accel_fs_tcp_set_ipv6_flow.exit_crit_edge: ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %accel_fs_tcp_set_ipv6_flow.exit

cond.true.i.i:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %pinet6.i.i = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 1
  %52 = ptrtoint ptr %pinet6.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %pinet6.i.i, align 8
  br label %accel_fs_tcp_set_ipv6_flow.exit

accel_fs_tcp_set_ipv6_flow.exit:                  ; preds = %cond.true.i.i, %if.else.accel_fs_tcp_set_ipv6_flow.exit_crit_edge
  %cond.i.i = phi ptr [ %53, %cond.true.i.i ], [ null, %if.else.accel_fs_tcp_set_ipv6_flow.exit_crit_edge ]
  %add.ptr55.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i, i32 0, i32 2, i32 12
  %54 = call ptr @memcpy(ptr %add.ptr55.i, ptr %cond.i.i, i32 16)
  %add.ptr58.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i, i32 0, i32 1, i32 8
  %55 = call ptr @memset(ptr %add.ptr58.i, i32 255, i32 32)
  %arrayidx27 = getelementptr [2 x %struct.mlx5e_flow_table], ptr %5, i32 0, i32 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %accel_fs_tcp_set_ipv6_flow.exit, %if.then23, %if.then3, %sw.bb.sw.epilog_crit_edge
  %ft.0 = phi ptr [ %arrayidx27, %accel_fs_tcp_set_ipv6_flow.exit ], [ %5, %if.then23 ], [ %5, %if.then3 ], [ %5, %sw.bb.sw.epilog_crit_edge ]
  %tobool29.not = icmp eq ptr %ft.0, null
  br i1 %tobool29.not, label %sw.epilog.out_crit_edge, label %do.end36

sw.epilog.out_crit_edge:                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

do.end36:                                         ; preds = %sw.epilog
  %add.ptr = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i, i32 0, i32 1, i32 5
  %56 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 -1, ptr %add.ptr, align 4
  %inet_sport59 = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 6
  %57 = ptrtoint ptr %inet_sport59 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %inet_sport59, align 8
  %conv60 = zext i16 %58 to i32
  %add.ptr65 = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i, i32 0, i32 2, i32 5
  %59 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 2
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %59, align 4
  %conv80 = zext i16 %61 to i32
  %shl89 = shl nuw i32 %conv80, 16
  %or90 = or i32 %shl89, %conv60
  %62 = ptrtoint ptr %add.ptr65 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %or90, ptr %add.ptr65, align 4
  %63 = ptrtoint ptr %dest to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 2, ptr %dest, align 4
  %64 = getelementptr inbounds %struct.mlx5_flow_destination, ptr %dest, i32 0, i32 1
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %tirn, ptr %64, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %flow_tag)
  %cmp96.not = icmp eq i32 %flow_tag, 0
  br i1 %cmp96.not, label %do.end36.if.end101_crit_edge, label %if.then98

do.end36.if.end101_crit_edge:                     ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end101

if.then98:                                        ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #8
  %flow_context = getelementptr inbounds %struct.mlx5_flow_spec, ptr %call.i.i, i32 0, i32 3
  %flow_tag99 = getelementptr inbounds %struct.mlx5_flow_spec, ptr %call.i.i, i32 0, i32 3, i32 1
  %66 = ptrtoint ptr %flow_tag99 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %flow_tag, ptr %flow_tag99, align 4
  %67 = ptrtoint ptr %flow_context to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 1, ptr %flow_context, align 4
  br label %if.end101

if.end101:                                        ; preds = %if.then98, %do.end36.if.end101_crit_edge
  %t = getelementptr inbounds %struct.mlx5e_flow_table, ptr %ft.0, i32 0, i32 1
  %68 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %t, align 4
  %call102 = call ptr @mlx5_add_flow_rules(ptr noundef %69, ptr noundef nonnull %call.i.i, ptr noundef nonnull %flow_act, ptr noundef nonnull %dest, i32 noundef 1) #6
  %cmp.i = icmp ugt ptr %call102, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then104, label %if.end101.out_crit_edge

if.end101.out_crit_edge:                          ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.then104:                                       ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #8
  %netdev105 = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 22
  %70 = ptrtoint ptr %netdev105 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %netdev105, align 4
  %72 = ptrtoint ptr %call102 to i32
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %71, ptr noundef nonnull @.str.1, i32 noundef %72) #10
  br label %out

out:                                              ; preds = %if.then104, %if.end101.out_crit_edge, %sw.epilog.out_crit_edge, %if.end.out_crit_edge
  %flow.0 = phi ptr [ %call102, %if.then104 ], [ %call102, %if.end101.out_crit_edge ], [ inttoptr (i32 -22 to ptr), %sw.epilog.out_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end.out_crit_edge ]
  call void @kvfree(ptr noundef nonnull %call.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %flow.0, %out ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %flow_act) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %dest) #6
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_add_flow_rules(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5e_accel_fs_tcp_destroy(ptr nocapture noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %accel_tcp = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 13, i32 10
  %0 = ptrtoint ptr %accel_tcp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %accel_tcp, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %ttc.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 13, i32 7
  %2 = ptrtoint ptr %ttc.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ttc.i, align 4
  %call1.i = tail call i32 @mlx5_ttc_fwd_default_dest(ptr noundef %3, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %for.cond.i, label %if.end.if.then.i_crit_edge

if.end.if.then.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

for.cond.i:                                       ; preds = %if.end
  %4 = ptrtoint ptr %ttc.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ttc.i, align 4
  %call1.1.i = tail call i32 @mlx5_ttc_fwd_default_dest(ptr noundef %5, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i)
  %tobool.not.1.i = icmp eq i32 %call1.1.i, 0
  br i1 %tobool.not.1.i, label %for.cond.i.accel_fs_tcp_disable.exit_crit_edge, label %for.cond.i.if.then.i_crit_edge

for.cond.i.if.then.i_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

for.cond.i.accel_fs_tcp_disable.exit_crit_edge:   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %accel_fs_tcp_disable.exit

if.then.i:                                        ; preds = %for.cond.i.if.then.i_crit_edge, %if.end.if.then.i_crit_edge
  %..i.lcssa.i = phi i32 [ 0, %if.end.if.then.i_crit_edge ], [ 1, %for.cond.i.if.then.i_crit_edge ]
  %call1.lcssa.i = phi i32 [ %call1.i, %if.end.if.then.i_crit_edge ], [ %call1.1.i, %for.cond.i.if.then.i_crit_edge ]
  %netdev.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 22
  %6 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %netdev.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %7, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.accel_fs_tcp_disable, i32 noundef %..i.lcssa.i, i32 noundef %call1.lcssa.i) #10
  br label %accel_fs_tcp_disable.exit

accel_fs_tcp_disable.exit:                        ; preds = %if.then.i, %for.cond.i.accel_fs_tcp_disable.exit_crit_edge
  %8 = ptrtoint ptr %accel_tcp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %accel_tcp, align 4
  %t.i = getelementptr [2 x %struct.mlx5e_flow_table], ptr %9, i32 0, i32 0, i32 1
  %10 = ptrtoint ptr %t.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %t.i, align 4
  %tobool.not.i.i = icmp eq ptr %11, null
  %cmp.i.i = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  br i1 %spec.select.i.i, label %accel_fs_tcp_disable.exit.accel_fs_tcp_destroy_table.exit_crit_edge, label %if.end.i

accel_fs_tcp_disable.exit.accel_fs_tcp_destroy_table.exit_crit_edge: ; preds = %accel_fs_tcp_disable.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %accel_fs_tcp_destroy_table.exit

if.end.i:                                         ; preds = %accel_fs_tcp_disable.exit
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx1.i = getelementptr %struct.mlx5e_accel_fs_tcp, ptr %9, i32 0, i32 1, i32 0
  %12 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx1.i, align 4
  tail call void @mlx5_del_flow_rules(ptr noundef %13) #6
  tail call void @mlx5e_destroy_flow_table(ptr noundef %9) #6
  %14 = ptrtoint ptr %t.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %t.i, align 4
  br label %accel_fs_tcp_destroy_table.exit

accel_fs_tcp_destroy_table.exit:                  ; preds = %if.end.i, %accel_fs_tcp_disable.exit.accel_fs_tcp_destroy_table.exit_crit_edge
  %15 = ptrtoint ptr %accel_tcp to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %accel_tcp, align 4
  %t.i.1 = getelementptr [2 x %struct.mlx5e_flow_table], ptr %16, i32 0, i32 1, i32 1
  %17 = ptrtoint ptr %t.i.1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %t.i.1, align 4
  %tobool.not.i.i.1 = icmp eq ptr %18, null
  %cmp.i.i.1 = icmp ugt ptr %18, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i.1 = or i1 %tobool.not.i.i.1, %cmp.i.i.1
  br i1 %spec.select.i.i.1, label %accel_fs_tcp_destroy_table.exit.accel_fs_tcp_destroy_table.exit.1_crit_edge, label %if.end.i.1

accel_fs_tcp_destroy_table.exit.accel_fs_tcp_destroy_table.exit.1_crit_edge: ; preds = %accel_fs_tcp_destroy_table.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %accel_fs_tcp_destroy_table.exit.1

if.end.i.1:                                       ; preds = %accel_fs_tcp_destroy_table.exit
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i.1 = getelementptr [2 x %struct.mlx5e_flow_table], ptr %16, i32 0, i32 1
  %arrayidx1.i.1 = getelementptr %struct.mlx5e_accel_fs_tcp, ptr %16, i32 0, i32 1, i32 1
  %19 = ptrtoint ptr %arrayidx1.i.1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx1.i.1, align 4
  tail call void @mlx5_del_flow_rules(ptr noundef %20) #6
  tail call void @mlx5e_destroy_flow_table(ptr noundef %arrayidx.i.1) #6
  %21 = ptrtoint ptr %t.i.1 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %t.i.1, align 4
  br label %accel_fs_tcp_destroy_table.exit.1

accel_fs_tcp_destroy_table.exit.1:                ; preds = %if.end.i.1, %accel_fs_tcp_destroy_table.exit.accel_fs_tcp_destroy_table.exit.1_crit_edge
  %22 = ptrtoint ptr %accel_tcp to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %accel_tcp, align 4
  tail call void @kfree(ptr noundef %23) #6
  %24 = ptrtoint ptr %accel_tcp to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %accel_tcp, align 4
  br label %cleanup

cleanup:                                          ; preds = %accel_fs_tcp_destroy_table.exit.1, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5e_accel_fs_tcp_create(ptr nocapture noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  %dest.i = alloca %struct.mlx5_flow_destination, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mdev = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %0 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev, align 64
  %arrayidx = getelementptr %struct.mlx5_core_dev, ptr %1, i32 0, i32 8, i32 0, i32 7
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %add.ptr = getelementptr i32, ptr %3, i32 24
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr, align 4
  %6 = and i32 %5, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 32) #11
  %accel_tcp = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 13, i32 10
  %8 = ptrtoint ptr %accel_tcp to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call7.i.i, ptr %accel_tcp, align 4
  %tobool3.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %for.body.preheader

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.preheader:                               ; preds = %if.end
  %call6 = tail call fastcc i32 @accel_fs_tcp_create_table(ptr noundef %priv, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %for.inc, label %for.body.preheader.while.end_crit_edge

for.body.preheader.while.end_crit_edge:           ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

for.inc:                                          ; preds = %for.body.preheader
  %call6.1 = tail call fastcc i32 @accel_fs_tcp_create_table(ptr noundef %priv, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.1)
  %tobool7.not.1 = icmp eq i32 %call6.1, 0
  br i1 %tobool7.not.1, label %for.inc.1, label %for.inc.while.body_crit_edge

for.inc.while.body_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

for.inc.1:                                        ; preds = %for.inc
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %dest.i) #6
  %9 = getelementptr inbounds i8, ptr %dest.i, i32 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_storeN_noabort(i32 %10, i32 8)
  store i64 0, ptr %9, align 4
  %11 = ptrtoint ptr %dest.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %dest.i, align 4
  %12 = getelementptr inbounds %struct.mlx5_flow_destination, ptr %dest.i, i32 0, i32 1
  %ttc.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 13, i32 7
  %13 = ptrtoint ptr %accel_tcp to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %accel_tcp, align 4
  %t.i = getelementptr [2 x %struct.mlx5e_flow_table], ptr %14, i32 0, i32 0, i32 1
  %15 = ptrtoint ptr %t.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %t.i, align 4
  %17 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %12, align 4
  %18 = ptrtoint ptr %ttc.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ttc.i, align 4
  %call2.i = call i32 @mlx5_ttc_fwd_dest(ptr noundef %19, i32 noundef 0, ptr noundef nonnull %dest.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %for.cond.i, label %for.inc.1.accel_fs_tcp_enable.exit_crit_edge

for.inc.1.accel_fs_tcp_enable.exit_crit_edge:     ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %accel_fs_tcp_enable.exit

for.cond.i:                                       ; preds = %for.inc.1
  %20 = ptrtoint ptr %accel_tcp to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %accel_tcp, align 4
  %t.1.i = getelementptr [2 x %struct.mlx5e_flow_table], ptr %21, i32 0, i32 1, i32 1
  %22 = ptrtoint ptr %t.1.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %t.1.i, align 4
  %24 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %23, ptr %12, align 4
  %25 = ptrtoint ptr %ttc.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ttc.i, align 4
  %call2.1.i = call i32 @mlx5_ttc_fwd_dest(ptr noundef %26, i32 noundef 1, ptr noundef nonnull %dest.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.1.i)
  %tobool.not.1.i = icmp eq i32 %call2.1.i, 0
  br i1 %tobool.not.1.i, label %accel_fs_tcp_enable.exit.thread, label %for.cond.i.accel_fs_tcp_enable.exit_crit_edge

for.cond.i.accel_fs_tcp_enable.exit_crit_edge:    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %accel_fs_tcp_enable.exit

accel_fs_tcp_enable.exit.thread:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %dest.i) #6
  br label %cleanup

accel_fs_tcp_enable.exit:                         ; preds = %for.cond.i.accel_fs_tcp_enable.exit_crit_edge, %for.inc.1.accel_fs_tcp_enable.exit_crit_edge
  %..i.lcssa.i = phi i32 [ 0, %for.inc.1.accel_fs_tcp_enable.exit_crit_edge ], [ 1, %for.cond.i.accel_fs_tcp_enable.exit_crit_edge ]
  %call2.lcssa.i = phi i32 [ %call2.i, %for.inc.1.accel_fs_tcp_enable.exit_crit_edge ], [ %call2.1.i, %for.cond.i.accel_fs_tcp_enable.exit_crit_edge ]
  %netdev.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 22
  %27 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %netdev.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %28, ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.accel_fs_tcp_enable, i32 noundef %..i.lcssa.i, i32 noundef %call2.lcssa.i) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %dest.i) #6
  br label %while.body

while.body:                                       ; preds = %accel_fs_tcp_enable.exit, %for.inc.while.body_crit_edge
  %i.038.ph = phi i32 [ 1, %for.inc.while.body_crit_edge ], [ 2, %accel_fs_tcp_enable.exit ]
  %err.0.ph = phi i32 [ %call6.1, %for.inc.while.body_crit_edge ], [ %call2.lcssa.i, %accel_fs_tcp_enable.exit ]
  %dec42 = add nsw i32 %i.038.ph, -1
  %29 = ptrtoint ptr %accel_tcp to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %accel_tcp, align 4
  %t.i34 = getelementptr [2 x %struct.mlx5e_flow_table], ptr %30, i32 0, i32 %dec42, i32 1
  %31 = ptrtoint ptr %t.i34 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %t.i34, align 4
  %tobool.not.i.i = icmp eq ptr %32, null
  %cmp.i.i = icmp ugt ptr %32, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  br i1 %spec.select.i.i, label %while.body.accel_fs_tcp_destroy_table.exit_crit_edge, label %if.end.i

while.body.accel_fs_tcp_destroy_table.exit_crit_edge: ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %accel_fs_tcp_destroy_table.exit

if.end.i:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i = getelementptr [2 x %struct.mlx5e_flow_table], ptr %30, i32 0, i32 %dec42
  %arrayidx1.i = getelementptr %struct.mlx5e_accel_fs_tcp, ptr %30, i32 0, i32 1, i32 %dec42
  %33 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx1.i, align 4
  call void @mlx5_del_flow_rules(ptr noundef %34) #6
  call void @mlx5e_destroy_flow_table(ptr noundef %arrayidx.i) #6
  %35 = ptrtoint ptr %t.i34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %t.i34, align 4
  br label %accel_fs_tcp_destroy_table.exit

accel_fs_tcp_destroy_table.exit:                  ; preds = %if.end.i, %while.body.accel_fs_tcp_destroy_table.exit_crit_edge
  br i1 %tobool7.not.1, label %while.body.1, label %accel_fs_tcp_destroy_table.exit.while.end_crit_edge

accel_fs_tcp_destroy_table.exit.while.end_crit_edge: ; preds = %accel_fs_tcp_destroy_table.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.1:                                     ; preds = %accel_fs_tcp_destroy_table.exit
  %dec42.1 = add nsw i32 %i.038.ph, -2
  %36 = ptrtoint ptr %accel_tcp to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %accel_tcp, align 4
  %t.i34.1 = getelementptr [2 x %struct.mlx5e_flow_table], ptr %37, i32 0, i32 %dec42.1, i32 1
  %38 = ptrtoint ptr %t.i34.1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %t.i34.1, align 4
  %tobool.not.i.i.1 = icmp eq ptr %39, null
  %cmp.i.i.1 = icmp ugt ptr %39, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i.1 = or i1 %tobool.not.i.i.1, %cmp.i.i.1
  br i1 %spec.select.i.i.1, label %while.body.1.while.end_crit_edge, label %if.end.i.1

while.body.1.while.end_crit_edge:                 ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

if.end.i.1:                                       ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i.1 = getelementptr [2 x %struct.mlx5e_flow_table], ptr %37, i32 0, i32 %dec42.1
  %arrayidx1.i.1 = getelementptr %struct.mlx5e_accel_fs_tcp, ptr %37, i32 0, i32 1, i32 %dec42.1
  %40 = ptrtoint ptr %arrayidx1.i.1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx1.i.1, align 4
  call void @mlx5_del_flow_rules(ptr noundef %41) #6
  call void @mlx5e_destroy_flow_table(ptr noundef %arrayidx.i.1) #6
  %42 = ptrtoint ptr %t.i34.1 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %t.i34.1, align 4
  br label %while.end

while.end:                                        ; preds = %if.end.i.1, %while.body.1.while.end_crit_edge, %accel_fs_tcp_destroy_table.exit.while.end_crit_edge, %for.body.preheader.while.end_crit_edge
  %err.049 = phi i32 [ %call6, %for.body.preheader.while.end_crit_edge ], [ %err.0.ph, %while.body.1.while.end_crit_edge ], [ %err.0.ph, %if.end.i.1 ], [ %err.0.ph, %accel_fs_tcp_destroy_table.exit.while.end_crit_edge ]
  %43 = ptrtoint ptr %accel_tcp to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %accel_tcp, align 4
  call void @kfree(ptr noundef %44) #6
  %45 = ptrtoint ptr %accel_tcp to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %accel_tcp, align 4
  br label %cleanup

cleanup:                                          ; preds = %while.end, %accel_fs_tcp_enable.exit.thread, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.049, %while.end ], [ -95, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %accel_fs_tcp_enable.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @accel_fs_tcp_create_table(ptr nocapture noundef readonly %priv, i32 noundef %type) unnamed_addr #0 align 64 {
entry:
  %dest.i = alloca %struct.mlx5_flow_destination, align 4
  %flow_act.i = alloca %struct.mlx5_flow_act, align 4
  %ft_attr = alloca %struct.mlx5_flow_table_attr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %fs = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 13
  %accel_tcp = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 13, i32 10
  %0 = ptrtoint ptr %accel_tcp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %accel_tcp, align 4
  %arrayidx = getelementptr [2 x %struct.mlx5e_flow_table], ptr %1, i32 0, i32 %type
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %ft_attr) #6
  %2 = getelementptr inbounds i8, ptr %ft_attr, i32 12
  %3 = call ptr @memset(ptr %2, i32 0, i32 16)
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %arrayidx, align 4
  %max_fte = getelementptr inbounds %struct.mlx5_flow_table_attr, ptr %ft_attr, i32 0, i32 1
  %5 = ptrtoint ptr %max_fte to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 65536, ptr %max_fte, align 4
  %level = getelementptr inbounds %struct.mlx5_flow_table_attr, ptr %ft_attr, i32 0, i32 2
  %6 = ptrtoint ptr %level to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 5, ptr %level, align 4
  %7 = ptrtoint ptr %ft_attr to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %ft_attr, align 4
  %8 = ptrtoint ptr %fs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fs, align 4
  %call = call ptr @mlx5_create_flow_table(ptr noundef %9, ptr noundef nonnull %ft_attr) #6
  %t = getelementptr [2 x %struct.mlx5e_flow_table], ptr %1, i32 0, i32 %type, i32 1
  %10 = ptrtoint ptr %t to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call, ptr %t, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %do.body7

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %call to i32
  %12 = ptrtoint ptr %t to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %t, align 4
  br label %cleanup

do.body7:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @accel_fs_tcp_create_table.__UNIQUE_ID_ddebug659, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@accel_fs_tcp_create_table, %if.then11)) #6
          to label %do.end17 [label %if.then11], !srcloc !32

if.then11:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #8
  %netdev = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 22
  %13 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %netdev, align 4
  %15 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %t, align 4
  %id = getelementptr inbounds %struct.mlx5_flow_table, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %id, align 4
  %level14 = getelementptr inbounds %struct.mlx5_flow_table, ptr %16, i32 0, i32 5
  %19 = ptrtoint ptr %level14 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %level14, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @accel_fs_tcp_create_table.__UNIQUE_ID_ddebug659, ptr noundef %14, ptr noundef nonnull @.str.6, i32 noundef %18, i32 noundef %20) #6
  br label %do.end17

do.end17:                                         ; preds = %if.then11, %do.body7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %21 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %21, i32 noundef 3520, i32 noundef 8) #11
  %g.i = getelementptr [2 x %struct.mlx5e_flow_table], ptr %1, i32 0, i32 %type, i32 2
  %22 = ptrtoint ptr %g.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call7.i.i.i.i, ptr %g.i, align 4
  %call.i.i.i = call noalias ptr @kvmalloc_node(i32 noundef 1024, i32 noundef 3520, i32 noundef -1) #9
  %tobool.not.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i, label %do.end17.accel_fs_tcp_create_groups.exit.thread54_crit_edge, label %lor.lhs.false.i

do.end17.accel_fs_tcp_create_groups.exit.thread54_crit_edge: ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %accel_fs_tcp_create_groups.exit.thread54

lor.lhs.false.i:                                  ; preds = %do.end17
  %23 = ptrtoint ptr %g.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %g.i, align 4
  %tobool3.not.i = icmp eq ptr %24, null
  br i1 %tobool3.not.i, label %lor.lhs.false.i.accel_fs_tcp_create_groups.exit.thread54_crit_edge, label %if.end.i

lor.lhs.false.i.accel_fs_tcp_create_groups.exit.thread54_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %accel_fs_tcp_create_groups.exit.thread54

accel_fs_tcp_create_groups.exit.thread54:         ; preds = %lor.lhs.false.i.accel_fs_tcp_create_groups.exit.thread54_crit_edge, %do.end17.accel_fs_tcp_create_groups.exit.thread54_crit_edge
  %25 = ptrtoint ptr %g.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %g.i, align 4
  call void @kfree(ptr noundef %26) #6
  call void @kvfree(ptr noundef %call.i.i.i) #6
  br label %err26

if.end.i:                                         ; preds = %lor.lhs.false.i
  %add.ptr7.i = getelementptr i8, ptr %call.i.i.i, i32 80
  %27 = ptrtoint ptr %add.ptr7.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %add.ptr7.i, align 4
  %or17.i = or i32 %28, -16769536
  store i32 %or17.i, ptr %add.ptr7.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %type)
  %switch.i = icmp ult i32 %type, 2
  br i1 %switch.i, label %do.end24.i, label %if.end.i.accel_fs_tcp_create_groups.exit.thread57_crit_edge

if.end.i.accel_fs_tcp_create_groups.exit.thread57_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %accel_fs_tcp_create_groups.exit.thread57

do.end24.i:                                       ; preds = %if.end.i
  %add.ptr25.i = getelementptr i8, ptr %call.i.i.i, i32 84
  %29 = ptrtoint ptr %add.ptr25.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 -1, ptr %add.ptr25.i, align 4
  %30 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %type, label %do.end24.i.accel_fs_tcp_create_groups.exit.thread57_crit_edge [
    i32 0, label %do.end45.i
    i32 1, label %sw.bb62.i
  ]

do.end24.i.accel_fs_tcp_create_groups.exit.thread57_crit_edge: ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %accel_fs_tcp_create_groups.exit.thread57

do.end45.i:                                       ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr46.i = getelementptr i8, ptr %call.i.i.i, i32 108
  %31 = ptrtoint ptr %add.ptr46.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 -1, ptr %add.ptr46.i, align 4
  %add.ptr56.i = getelementptr i8, ptr %call.i.i.i, i32 124
  %32 = ptrtoint ptr %add.ptr56.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -1, ptr %add.ptr56.i, align 4
  br label %do.body67.i

sw.bb62.i:                                        ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr63.i = getelementptr i8, ptr %call.i.i.i, i32 96
  %33 = call ptr @memset(ptr %add.ptr63.i, i32 255, i32 32)
  br label %do.body67.i

do.body67.i:                                      ; preds = %sw.bb62.i, %do.end45.i
  %add.ptr71.i = getelementptr i32, ptr %call.i.i.i, i32 15
  %34 = ptrtoint ptr %add.ptr71.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %add.ptr71.i, align 4
  %and72.i = and i32 %35, -256
  %or74.i = or i32 %and72.i, 1
  store i32 %or74.i, ptr %add.ptr71.i, align 4
  %add.ptr83.i = getelementptr i32, ptr %call.i.i.i, i32 7
  %36 = ptrtoint ptr %add.ptr83.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %add.ptr83.i, align 4
  %add.ptr96.i = getelementptr i32, ptr %call.i.i.i, i32 9
  %37 = ptrtoint ptr %add.ptr96.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 65534, ptr %add.ptr96.i, align 4
  %38 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %t, align 4
  %call104.i = call ptr @mlx5_create_flow_group(ptr noundef %39, ptr noundef nonnull %call.i.i.i) #6
  %40 = ptrtoint ptr %g.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %g.i, align 4
  %42 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx, align 4
  %arrayidx.i = getelementptr ptr, ptr %41, i32 %43
  %44 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call104.i, ptr %arrayidx.i, align 4
  %45 = load ptr, ptr %g.i, align 4
  %46 = load i32, ptr %arrayidx, align 4
  %arrayidx108.i = getelementptr ptr, ptr %45, i32 %46
  %47 = ptrtoint ptr %arrayidx108.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx108.i, align 4
  %cmp.i.i = icmp ugt ptr %48, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %do.body67.i.accel_fs_tcp_create_groups.exit_crit_edge, label %if.end111.i

do.body67.i.accel_fs_tcp_create_groups.exit_crit_edge: ; preds = %do.body67.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %accel_fs_tcp_create_groups.exit

if.end111.i:                                      ; preds = %do.body67.i
  %inc.i = add i32 %46, 1
  %49 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %inc.i, ptr %arrayidx, align 4
  %50 = call ptr @memset(ptr %call.i.i.i, i32 0, i32 1024)
  %51 = ptrtoint ptr %add.ptr83.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 65535, ptr %add.ptr83.i, align 4
  %52 = ptrtoint ptr %add.ptr96.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 65535, ptr %add.ptr96.i, align 4
  %53 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %t, align 4
  %call142.i = call ptr @mlx5_create_flow_group(ptr noundef %54, ptr noundef nonnull %call.i.i.i) #6
  %55 = ptrtoint ptr %g.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %g.i, align 4
  %57 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx, align 4
  %arrayidx145.i = getelementptr ptr, ptr %56, i32 %58
  %59 = ptrtoint ptr %arrayidx145.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call142.i, ptr %arrayidx145.i, align 4
  %60 = load ptr, ptr %g.i, align 4
  %61 = load i32, ptr %arrayidx, align 4
  %arrayidx148.i = getelementptr ptr, ptr %60, i32 %61
  %62 = ptrtoint ptr %arrayidx148.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx148.i, align 4
  %cmp.i222.i = icmp ugt ptr %63, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i222.i, label %if.end111.i.accel_fs_tcp_create_groups.exit_crit_edge, label %accel_fs_tcp_create_groups.exit.thread

if.end111.i.accel_fs_tcp_create_groups.exit_crit_edge: ; preds = %if.end111.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %accel_fs_tcp_create_groups.exit

accel_fs_tcp_create_groups.exit.thread:           ; preds = %if.end111.i
  call void @__sanitizer_cov_trace_pc() #8
  %inc153.i = add i32 %61, 1
  %64 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %inc153.i, ptr %arrayidx, align 4
  call void @kvfree(ptr noundef nonnull %call.i.i.i) #6
  br label %if.end21

accel_fs_tcp_create_groups.exit.thread57:         ; preds = %do.end24.i.accel_fs_tcp_create_groups.exit.thread57_crit_edge, %if.end.i.accel_fs_tcp_create_groups.exit.thread57_crit_edge
  call void @kvfree(ptr noundef nonnull %call.i.i.i) #6
  br label %err26

accel_fs_tcp_create_groups.exit:                  ; preds = %if.end111.i.accel_fs_tcp_create_groups.exit_crit_edge, %do.body67.i.accel_fs_tcp_create_groups.exit_crit_edge
  %65 = ptrtoint ptr %g.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %g.i, align 4
  %67 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx, align 4
  %arrayidx157.i = getelementptr ptr, ptr %66, i32 %68
  %69 = ptrtoint ptr %arrayidx157.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %arrayidx157.i, align 4
  %71 = ptrtoint ptr %70 to i32
  store ptr null, ptr %arrayidx157.i, align 4
  call void @kvfree(ptr noundef nonnull %call.i.i.i) #6
  %tobool19.not = icmp eq ptr %70, null
  br i1 %tobool19.not, label %accel_fs_tcp_create_groups.exit.if.end21_crit_edge, label %accel_fs_tcp_create_groups.exit.err26_crit_edge

accel_fs_tcp_create_groups.exit.err26_crit_edge:  ; preds = %accel_fs_tcp_create_groups.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %err26

accel_fs_tcp_create_groups.exit.if.end21_crit_edge: ; preds = %accel_fs_tcp_create_groups.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

if.end21:                                         ; preds = %accel_fs_tcp_create_groups.exit.if.end21_crit_edge, %accel_fs_tcp_create_groups.exit.thread
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %dest.i) #6
  %72 = call ptr @memset(ptr %dest.i, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %flow_act.i) #6
  %73 = getelementptr inbounds i8, ptr %flow_act.i, i32 4
  %74 = call ptr @memset(ptr %73, i32 0, i32 32)
  %75 = ptrtoint ptr %flow_act.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 4, ptr %flow_act.i, align 4
  %76 = ptrtoint ptr %accel_tcp to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %accel_tcp, align 4
  %ttc.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 13, i32 7
  %78 = ptrtoint ptr %ttc.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %ttc.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %type)
  %cond.i.i = icmp ne i32 %type, 0
  %..i.i = zext i1 %cond.i.i to i32
  call void @mlx5_ttc_get_default_dest(ptr nonnull sret(%struct.mlx5_flow_destination) align 4 %dest.i, ptr noundef %79, i32 noundef %..i.i) #6
  %t.i46 = getelementptr [2 x %struct.mlx5e_flow_table], ptr %77, i32 0, i32 %type, i32 1
  %80 = ptrtoint ptr %t.i46 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %t.i46, align 4
  %call2.i = call ptr @mlx5_add_flow_rules(ptr noundef %81, ptr noundef null, ptr noundef nonnull %flow_act.i, ptr noundef nonnull %dest.i, i32 noundef 1) #6
  %cmp.i.i47 = icmp ugt ptr %call2.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i47, label %accel_fs_tcp_add_default_rule.exit, label %accel_fs_tcp_add_default_rule.exit.thread

accel_fs_tcp_add_default_rule.exit.thread:        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx5.i = getelementptr %struct.mlx5e_accel_fs_tcp, ptr %77, i32 0, i32 1, i32 %type
  %82 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %call2.i, ptr %arrayidx5.i, align 4
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %flow_act.i) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %dest.i) #6
  br label %cleanup

accel_fs_tcp_add_default_rule.exit:               ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  %83 = ptrtoint ptr %call2.i to i32
  %netdev.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 22
  %84 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %netdev.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %85, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.accel_fs_tcp_add_default_rule, i32 noundef %type, i32 noundef %83) #10
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %flow_act.i) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %dest.i) #6
  br label %err26

err26:                                            ; preds = %accel_fs_tcp_add_default_rule.exit, %accel_fs_tcp_create_groups.exit.err26_crit_edge, %accel_fs_tcp_create_groups.exit.thread57, %accel_fs_tcp_create_groups.exit.thread54
  %err.0 = phi i32 [ %71, %accel_fs_tcp_create_groups.exit.err26_crit_edge ], [ %83, %accel_fs_tcp_add_default_rule.exit ], [ -12, %accel_fs_tcp_create_groups.exit.thread54 ], [ -22, %accel_fs_tcp_create_groups.exit.thread57 ]
  call void @mlx5e_destroy_flow_table(ptr noundef %arrayidx) #6
  br label %cleanup

cleanup:                                          ; preds = %err26, %accel_fs_tcp_add_default_rule.exit.thread, %if.then
  %retval.0 = phi i32 [ %11, %if.then ], [ %err.0, %err26 ], [ 0, %accel_fs_tcp_add_default_rule.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %ft_attr) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ipv6_addr_type(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_ttc_fwd_default_dest(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_destroy_flow_table(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_create_flow_table(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_create_flow_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_ttc_get_default_dest(ptr sret(%struct.mlx5_flow_destination) align 4, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_ttc_fwd_dest(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(0) }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !13, !14, !15, !17, !19, !21}
!llvm.module.flags = !{!23, !24, !25, !26, !27, !28, !29, !30}
!llvm.ident = !{!31}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_accel/fs_tcp.c", i32 97, i32 3}
!2 = !{ptr @__func__.mlx5e_accel_fs_add_sk, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_accel/fs_tcp.c", i32 143, i32 28}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_accel/fs_tcp.c", i32 313, i32 8}
!7 = !{ptr @__func__.accel_fs_tcp_disable, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_accel/fs_tcp.c", i32 314, i32 8}
!9 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_accel/fs_tcp.c", i32 287, i32 2}
!11 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @accel_fs_tcp_create_table.__UNIQUE_ID_ddebug659, !10, !"__UNIQUE_ID_ddebug659", i1 false, i1 false}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_accel/fs_tcp.c", i32 169, i32 7}
!17 = !{ptr @__func__.accel_fs_tcp_add_default_rule, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_accel/fs_tcp.c", i32 170, i32 7}
!19 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_accel/fs_tcp.c", i32 335, i32 8}
!21 = !{ptr @__func__.accel_fs_tcp_enable, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_accel/fs_tcp.c", i32 336, i32 8}
!23 = !{i32 1, !"wchar_size", i32 2}
!24 = !{i32 1, !"min_enum_size", i32 4}
!25 = !{i32 8, !"branch-target-enforcement", i32 0}
!26 = !{i32 8, !"sign-return-address", i32 0}
!27 = !{i32 8, !"sign-return-address-all", i32 0}
!28 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!29 = !{i32 7, !"uwtable", i32 1}
!30 = !{i32 7, !"frame-pointer", i32 2}
!31 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!32 = !{i64 2149048594, i64 2149048599, i64 2149048612, i64 2149048656, i64 2149048690, i64 2149048711}
