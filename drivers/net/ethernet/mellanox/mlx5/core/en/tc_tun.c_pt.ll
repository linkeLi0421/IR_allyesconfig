; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlx5/core/en/tc_tun.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlx5/core/en/tc_tun.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mlx5e_tc_tunnel = type { i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.3, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.164, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.3 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.17 }
%union.anon.17 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.18 }
%union.anon.18 = type { i32 }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.164 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.list_head = type { ptr, ptr }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.rtnl_link_ops = type { %struct.list_head, ptr, i32, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mlx5_pkt_reformat_params = type { i32, i8, i8, i32, ptr }
%struct.mlx5e_neigh = type { %union.anon.217, i32 }
%union.anon.217 = type { %struct.in6_addr }
%struct.in6_addr = type { %union.anon.52 }
%union.anon.52 = type { [4 x i32] }
%struct.mlx5e_tc_tun_route_attr = type { ptr, ptr, %union.anon.239, ptr, i8 }
%union.anon.239 = type { %struct.flowi6 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.kuid_t = type { i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.mlx5e_priv = type { ptr, ptr, [8 x i32], %struct.mlx5e_dcbx_dp, i32, i32, %struct.mutex, [48 x i8], %struct.mlx5e_rq, %struct.mlx5e_channels, [2 x [8 x i32]], ptr, ptr, %struct.mlx5e_flow_steering, ptr, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.mlx5_nb, ptr, ptr, ptr, %struct.mlx5e_stats, ptr, [12 x i8], %struct.mlx5e_channel_stats, %struct.mlx5e_ptp_stats, i16, i16, i8, i8, i8, %struct.hwtstamp_config, i16, i16, %struct.notifier_block, %struct.notifier_block, i32, %struct.udp_tunnel_nic_info, %struct.mlx5e_dcbx, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mlx5e_xsk, %struct.mlx5e_scratchpad, %struct.mlx5e_htb, ptr, [16 x i8] }
%struct.mlx5e_dcbx_dp = type { [64 x i8], i8 }
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
%struct.mod_hdr_tbl = type { %struct.mutex, [256 x %struct.hlist_head] }
%struct.netdev_net_notifier = type { %struct.list_head, ptr }
%struct.mlx5e_promisc_table = type { %struct.mlx5e_flow_table, ptr }
%struct.mlx5e_flow_table = type { i32, ptr, ptr }
%struct.mlx5e_l2_table = type { %struct.mlx5e_flow_table, [256 x %struct.hlist_head], [256 x %struct.hlist_head], %struct.mlx5e_l2_rule, %struct.mlx5e_l2_rule, ptr, i8, i8, i8 }
%struct.mlx5e_l2_rule = type { [8 x i8], ptr }
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
%struct.mlx5e_encap_entry = type { ptr, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, ptr, ptr, %struct.mlx5e_mpls_info, [6 x i8], ptr, i32, ptr, i32, i8, ptr, i32, %struct.refcount_struct, %struct.completion, i32, %struct.callback_head }
%struct.mlx5e_mpls_info = type { i32, i8, i8, i8 }
%struct.callback_head = type { ptr, ptr }
%struct.ip_tunnel_key = type { i64, %union.anon.218, i16, i8, i8, i32, i16, i16 }
%union.anon.218 = type { %struct.anon.220 }
%struct.anon.220 = type { %struct.in6_addr, %struct.in6_addr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.85, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.26 }
%struct.llist_node = type { ptr }
%union.anon.26 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.28 }
%union.anon.28 = type { %struct.anon.29 }
%struct.anon.29 = type { ptr, i32, i32, i32, i64, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.tlbflush_unmap_batch = type {}
%union.anon.85 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.neighbour = type { ptr, ptr, ptr, i32, i32, %struct.rwlock_t, %struct.refcount_struct, i32, %struct.sk_buff_head, %struct.timer_list, i32, %struct.atomic_t, i8, i8, i8, i8, i32, %struct.seqlock_t, [32 x i8], %struct.hh_cache, ptr, ptr, %struct.list_head, %struct.list_head, %struct.callback_head, ptr, ptr, [0 x i8], [4 x i8] }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.sk_buff_head = type { %union.anon.56, i32, %struct.spinlock }
%union.anon.56 = type { %struct.anon.57 }
%struct.anon.57 = type { ptr, ptr }
%struct.hh_cache = type { i32, %struct.seqlock_t, [32 x i32] }
%struct.neigh_table = type { i32, i32, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.neigh_parms, %struct.list_head, i32, i32, i32, i32, i32, %struct.delayed_work, %struct.delayed_work, %struct.timer_list, %struct.sk_buff_head, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.rwlock_t, i32, ptr, ptr, ptr }
%struct.neigh_parms = type { %struct.possible_net_t, ptr, ptr, %struct.list_head, ptr, ptr, ptr, i32, %struct.refcount_struct, %struct.callback_head, i32, [13 x i32], [1 x i32] }
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.rtable = type { %struct.dst_entry, i32, i32, i16, i8, i8, i32, i8, %union.anon.62, i32, %struct.list_head, ptr }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, ptr }
%union.anon.62 = type { %struct.in6_addr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.43, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.43 = type { %struct.anon.44 }
%struct.anon.44 = type { ptr, i32, i32, i32 }
%struct.raw_notifier_head = type { ptr }
%struct.netns_core = type { ptr, i32, ptr }
%struct.netns_mib = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.netns_packet = type { %struct.mutex, %struct.hlist_head }
%struct.netns_unix = type { i32, ptr }
%struct.netns_nexthop = type { %struct.rb_root, ptr, i32, i32, %struct.blocking_notifier_head }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.netns_ipv4 = type { %struct.inet_timewait_death_row, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, ptr, ptr, ptr, i32, i8, i8, i8, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i32, i32, i32, i32, %struct.local_ports, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, [3 x i32], [3 x i32], i32, i32, i32, i32, ptr, ptr, i32, %struct.atomic_t, i32, i32, i32, i8, i8, i8, i32, i32, i32, %struct.ping_group_range, %struct.atomic_t, ptr, i32, %struct.list_head, ptr, i32, i8, i8, ptr, i32, ptr, i32, %struct.atomic_t, %struct.siphash_key_t, [96 x i8] }
%struct.inet_timewait_death_row = type { %struct.atomic_t, [124 x i8], ptr, i32 }
%struct.local_ports = type { %struct.seqlock_t, [2 x i32], i8 }
%struct.ping_group_range = type { %struct.seqlock_t, [2 x %struct.kgid_t] }
%struct.kgid_t = type { i32 }
%struct.siphash_key_t = type { [2 x i64] }
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.66, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.anon.66 = type { %struct.hlist_head, %struct.spinlock, i32 }
%struct.netns_ieee802154_lowpan = type { %struct.netns_sysctl_lowpan, ptr }
%struct.netns_sysctl_lowpan = type { ptr }
%struct.netns_sctp = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, %struct.timer_list, %struct.list_head, %struct.spinlock, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netns_nf = type { ptr, [13 x ptr], ptr, [5 x ptr], [5 x ptr], [3 x ptr], [5 x ptr], [7 x ptr], i32, i32 }
%struct.netns_ct = type { i8, i8, i8, i8, i8, i8, i8, ptr, ptr, ptr, %struct.nf_ip_net, i32 }
%struct.nf_ip_net = type { %struct.nf_generic_net, %struct.nf_tcp_net, %struct.nf_udp_net, %struct.nf_icmp_net, %struct.nf_icmp_net, %struct.nf_dccp_net, %struct.nf_sctp_net, %struct.nf_gre_net }
%struct.nf_generic_net = type { i32 }
%struct.nf_tcp_net = type { [14 x i32], i8, i8, i8, i8, i32 }
%struct.nf_udp_net = type { [2 x i32], i32 }
%struct.nf_icmp_net = type { i32 }
%struct.nf_dccp_net = type { i8, [10 x i32] }
%struct.nf_sctp_net = type { [10 x i32] }
%struct.nf_gre_net = type { %struct.list_head, [2 x i32] }
%struct.netns_nftables = type { i8 }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [8 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_mpls = type { i32, i32, i32, ptr, ptr }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.netns_xdp = type { %struct.mutex, %struct.hlist_head }
%struct.netns_mctp = type { %struct.list_head, %struct.mutex, %struct.hlist_head, %struct.spinlock, %struct.hlist_head, i32, %struct.mutex, %struct.list_head }
%struct.netns_smc = type { ptr, %struct.mutex, ptr }
%struct.mlx5e_neigh_hash_entry = type { %struct.rhash_head, %struct.mlx5e_neigh, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.refcount_struct, i32, %struct.callback_head }
%struct.rhash_head = type { ptr }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.ipv6_stub = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mlx5_flow_attr = type { i32, ptr, ptr, %struct.mlx5_ct_attr, ptr, ptr, i32, i16, i32, ptr, ptr, i8, i8, i8, i8, i32, %union.anon.240 }
%struct.mlx5_ct_attr = type { i16, i16, ptr, ptr, i32 }
%union.anon.240 = type { [0 x %struct.mlx5_esw_flow_attr] }
%struct.mlx5_esw_flow_attr = type { ptr, ptr, ptr, ptr, ptr, i32, i32, [2 x i16], [2 x i16], [2 x i8], i8, [32 x %struct.anon.241], ptr, ptr }
%struct.anon.241 = type { i32, ptr, ptr, ptr, ptr, i32 }
%struct.mlx5_rx_tun_attr = type { i16, %union.anon.242, %union.anon.243, i32 }
%union.anon.242 = type { %struct.in6_addr }
%union.anon.243 = type { %struct.in6_addr }
%struct.mlx5_flow_spec = type { i8, [128 x i32], [128 x i32], %struct.mlx5_flow_context }
%struct.mlx5_flow_context = type { i32, i32, i32 }
%struct.flow_dissector_key_basic = type { i16, i8, i8 }
%struct.flow_match_basic = type { ptr, ptr }
%struct.flow_match_control = type { ptr, ptr }
%struct.flow_match_ipv4_addrs = type { ptr, ptr }
%struct.flow_match_ipv6_addrs = type { ptr, ptr }
%struct.flow_match_ip = type { ptr, ptr }
%struct.flow_cls_offload = type { %struct.flow_cls_common_offload, i32, i32, ptr, %struct.flow_stats, i32 }
%struct.flow_cls_common_offload = type { i32, i16, i32, ptr }
%struct.flow_stats = type { i64, i64, i64, i64, i32, i8 }
%struct.flow_dissector_key_control = type { i16, i16, i32 }
%struct.flow_dissector_key_ipv4_addrs = type { i32, i32 }
%struct.flow_dissector_key_ipv6_addrs = type { %struct.in6_addr, %struct.in6_addr }
%struct.flow_dissector_key_ip = type { i8, i8 }
%struct.flow_match_ports = type { ptr, ptr }
%struct.anon.207 = type { i16, i16 }

@vxlan_tunnel = external dso_local global %struct.mlx5e_tc_tunnel, align 4
@geneve_tunnel = external dso_local global %struct.mlx5e_tc_tunnel, align 4
@gre_tunnel = external dso_local global %struct.mlx5e_tc_tunnel, align 4
@mplsoudp_tunnel = external dso_local global %struct.mlx5e_tc_tunnel, align 4
@mlx5e_tc_tun_create_header_ipv4._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 255, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"%s:%d:(pid %d): encap size %d too big, max supported is %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"mlx5e_tc_tun_create_header_ipv4\00", [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"drivers/net/ethernet/mellanox/mlx5/core/en/tc_tun.c\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mlx5e_tc_tun_create_header_ipv4._entry_ptr = internal global ptr @mlx5e_tc_tun_create_header_ipv4._entry, section ".printk_index", align 4
@mlx5e_tc_tun_update_header_ipv4._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.5, ptr @.str.2, i32 370, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"mlx5e_tc_tun_update_header_ipv4\00", [32 x i8] zeroinitializer }, align 32
@mlx5e_tc_tun_update_header_ipv4._entry_ptr = internal global ptr @mlx5e_tc_tun_update_header_ipv4._entry, section ".printk_index", align 4
@mlx5e_tc_tun_create_header_ipv6._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.6, ptr @.str.2, i32 524, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"mlx5e_tc_tun_create_header_ipv6\00", [32 x i8] zeroinitializer }, align 32
@mlx5e_tc_tun_create_header_ipv6._entry_ptr = internal global ptr @mlx5e_tc_tun_create_header_ipv6._entry, section ".printk_index", align 4
@mlx5e_tc_tun_update_header_ipv6._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.7, ptr @.str.2, i32 638, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"mlx5e_tc_tun_update_header_ipv6\00", [32 x i8] zeroinitializer }, align 32
@mlx5e_tc_tun_update_header_ipv6._entry_ptr = internal global ptr @mlx5e_tc_tun_update_header_ipv6._entry, section ".printk_index", align 4
@mlx5e_netdev_ops = external dso_local constant %struct.net_device_ops, align 4
@.str.8 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"decapsulation offload is not supported for %s net device\0A\00", [38 x i8] zeroinitializer }, align 32
@mlx5e_tc_tun_parse.__msg = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"mlx5_core: Matching on TTL is not supported\00", [52 x i8] zeroinitializer }, align 32
@mlx5e_tc_tun_parse_udp_ports.__msg = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"mlx5_core: UDP tunnel decap filter must include enc_dst_port condition\00", [57 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"UDP tunnel decap filter must include enc_dst_port condition\0A\00", [35 x i8] zeroinitializer }, align 32
@mlx5e_tc_tun_parse_udp_ports.__msg.10 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"mlx5_core: UDP tunnel decap filter must match enc_dst_port fully\00", [63 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"UDP tunnel decap filter must match enc_dst_port fully\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vxlan\00", [26 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"geneve\00", [25 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gretap\00", [25 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ip6gretap\00", [22 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"bareudp\00", [24 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.17 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.19 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@mlx5e_gen_ip_tunnel_header._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.2, i32 192, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\014mlx5: Cannot generate tunnel header for this tunnel\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"mlx5e_gen_ip_tunnel_header\00", [37 x i8] zeroinitializer }, align 32
@mlx5e_gen_ip_tunnel_header._entry_ptr = internal global ptr @mlx5e_gen_ip_tunnel_header._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@ipv6_stub = external dso_local local_unnamed_addr global ptr, section ".data..read_mostly", align 4
@.str.22 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 4, i64 6]
@__sancov_gen_cov_switch_values.23 = internal global [4 x i64] [i64 2, i64 8, i64 4, i64 6]
@__sancov_gen_cov_switch_values.24 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 3]
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 254, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 369, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 523, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 637, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 814, i32 8 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 923, i32 4 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 953, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 956, i32 8 }
@___asan_gen_.73 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 964, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 967, i32 8 }
@___asan_gen_.80 = private unnamed_addr constant [23 x i8] c"../include/net/vxlan.h\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 420, i32 43 }
@___asan_gen_.83 = private unnamed_addr constant [24 x i8] c"../include/net/geneve.h\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 68, i32 43 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 43, i32 43 }
@___asan_gen_.89 = private unnamed_addr constant [21 x i8] c"../include/net/gre.h\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 49, i32 43 }
@___asan_gen_.92 = private unnamed_addr constant [25 x i8] c"../include/net/bareudp.h\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 13, i32 43 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 695, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 723, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 192, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.113 = private constant [55 x i8] c"../drivers/net/ethernet/mellanox/mlx5/core/en/tc_tun.c\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 185, i32 10 }
@llvm.compiler.used = appending global [35 x ptr] [ptr @mlx5e_gen_ip_tunnel_header._entry, ptr @mlx5e_gen_ip_tunnel_header._entry_ptr, ptr @mlx5e_tc_tun_create_header_ipv4._entry, ptr @mlx5e_tc_tun_create_header_ipv4._entry_ptr, ptr @mlx5e_tc_tun_create_header_ipv6._entry, ptr @mlx5e_tc_tun_create_header_ipv6._entry_ptr, ptr @mlx5e_tc_tun_update_header_ipv4._entry, ptr @mlx5e_tc_tun_update_header_ipv4._entry_ptr, ptr @mlx5e_tc_tun_update_header_ipv6._entry, ptr @mlx5e_tc_tun_update_header_ipv6._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @mlx5e_tc_tun_parse.__msg, ptr @mlx5e_tc_tun_parse_udp_ports.__msg, ptr @.str.9, ptr @mlx5e_tc_tun_parse_udp_ports.__msg.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22], section "llvm.metadata"
@0 = internal global [30 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_tc_tun_create_header_ipv4._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_tc_tun_update_header_ipv4._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_tc_tun_create_header_ipv6._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_tc_tun_update_header_ipv6._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_tc_tun_parse.__msg to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_tc_tun_parse_udp_ports.__msg to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_tc_tun_parse_udp_ports.__msg.10 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_gen_ip_tunnel_header._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @mlx5e_get_tc_tun(ptr nocapture noundef readonly %tunnel_dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %rtnl_link_ops.i = getelementptr inbounds %struct.net_device, ptr %tunnel_dev, i32 0, i32 136
  %0 = ptrtoint ptr %rtnl_link_ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rtnl_link_ops.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.return_crit_edge, label %netif_is_vxlan.exit

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

netif_is_vxlan.exit:                              ; preds = %entry
  %kind.i = getelementptr inbounds %struct.rtnl_link_ops, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %kind.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %kind.i, align 4
  %call.i = tail call i32 @strcmp(ptr noundef %3, ptr noundef nonnull dereferenceable(6) @.str.12) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool2.not.i, label %netif_is_vxlan.exit.return_crit_edge, label %netif_is_geneve.exit

netif_is_vxlan.exit.return_crit_edge:             ; preds = %netif_is_vxlan.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

netif_is_geneve.exit:                             ; preds = %netif_is_vxlan.exit
  %4 = ptrtoint ptr %kind.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %kind.i, align 4
  %call.i18 = tail call i32 @strcmp(ptr noundef %5, ptr noundef nonnull dereferenceable(7) @.str.13) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i18)
  %tobool2.not.i19 = icmp eq i32 %call.i18, 0
  br i1 %tobool2.not.i19, label %netif_is_geneve.exit.return_crit_edge, label %netif_is_gretap.exit

netif_is_geneve.exit.return_crit_edge:            ; preds = %netif_is_geneve.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

netif_is_gretap.exit:                             ; preds = %netif_is_geneve.exit
  %6 = ptrtoint ptr %kind.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %kind.i, align 4
  %call.i24 = tail call i32 @strcmp(ptr noundef %7, ptr noundef nonnull dereferenceable(7) @.str.14) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i24)
  %tobool2.not.i25 = icmp eq i32 %call.i24, 0
  br i1 %tobool2.not.i25, label %netif_is_gretap.exit.return_crit_edge, label %netif_is_ip6gretap.exit

netif_is_gretap.exit.return_crit_edge:            ; preds = %netif_is_gretap.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

netif_is_ip6gretap.exit:                          ; preds = %netif_is_gretap.exit
  %8 = ptrtoint ptr %kind.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %kind.i, align 4
  %call.i30 = tail call i32 @strcmp(ptr noundef %9, ptr noundef nonnull dereferenceable(10) @.str.15) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i30)
  %tobool2.not.i31 = icmp eq i32 %call.i30, 0
  br i1 %tobool2.not.i31, label %netif_is_ip6gretap.exit.return_crit_edge, label %netif_is_bareudp.exit

netif_is_ip6gretap.exit.return_crit_edge:         ; preds = %netif_is_ip6gretap.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

netif_is_bareudp.exit:                            ; preds = %netif_is_ip6gretap.exit
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %kind.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %kind.i, align 4
  %call.i36 = tail call i32 @strcmp(ptr noundef %11, ptr noundef nonnull dereferenceable(8) @.str.16) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i36)
  %tobool2.not.i37 = icmp eq i32 %call.i36, 0
  %spec.select = select i1 %tobool2.not.i37, ptr @mplsoudp_tunnel, ptr null
  br label %return

return:                                           ; preds = %netif_is_bareudp.exit, %netif_is_ip6gretap.exit.return_crit_edge, %netif_is_gretap.exit.return_crit_edge, %netif_is_geneve.exit.return_crit_edge, %netif_is_vxlan.exit.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi ptr [ @vxlan_tunnel, %netif_is_vxlan.exit.return_crit_edge ], [ @geneve_tunnel, %netif_is_geneve.exit.return_crit_edge ], [ @gre_tunnel, %netif_is_ip6gretap.exit.return_crit_edge ], [ @gre_tunnel, %netif_is_gretap.exit.return_crit_edge ], [ null, %entry.return_crit_edge ], [ %spec.select, %netif_is_bareudp.exit ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5e_tc_tun_create_header_ipv4(ptr noundef %priv, ptr noundef %mirred_dev, ptr noundef %e) local_unnamed_addr #1 align 64 {
entry:
  %reformat_params = alloca %struct.mlx5_pkt_reformat_params, align 4
  %m_neigh = alloca %struct.mlx5e_neigh, align 4
  %attr = alloca %struct.mlx5e_tc_tun_route_attr, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mdev = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %0 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev, align 64
  %arrayidx = getelementptr %struct.mlx5_core_dev, ptr %1, i32 0, i32 8, i32 0, i32 9
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %add.ptr = getelementptr i32, ptr %3, i32 1
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr, align 4
  %and = and i32 %5, 1023
  %tun_info = getelementptr inbounds %struct.mlx5e_encap_entry, ptr %e, i32 0, i32 6
  %6 = ptrtoint ptr %tun_info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tun_info, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %reformat_params) #10
  %8 = call ptr @memset(ptr %reformat_params, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %m_neigh) #10
  %9 = call ptr @memset(ptr %m_neigh, i32 0, i32 20)
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %attr) #10
  %10 = call ptr @memset(ptr %attr, i32 0, i32 104)
  %tos = getelementptr inbounds %struct.ip_tunnel_key, ptr %7, i32 0, i32 3
  %11 = ptrtoint ptr %tos to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %tos, align 2
  %13 = and i8 %12, -4
  %flowic_tos = getelementptr inbounds %struct.mlx5e_tc_tun_route_attr, ptr %attr, i32 0, i32 2, i32 0, i32 0, i32 3
  %14 = ptrtoint ptr %flowic_tos to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %flowic_tos, align 4
  %u = getelementptr inbounds %struct.ip_tunnel_key, ptr %7, i32 0, i32 1
  %dst = getelementptr inbounds %struct.ip_tunnel_key, ptr %7, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 1
  %15 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dst, align 4
  %daddr = getelementptr inbounds %struct.mlx5e_tc_tun_route_attr, ptr %attr, i32 0, i32 2, i32 0, i32 1, i32 0, i32 0, i32 1
  %17 = ptrtoint ptr %daddr to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %daddr, align 4
  %18 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %u, align 8
  %saddr = getelementptr inbounds %struct.mlx5e_tc_tun_route_attr, ptr %attr, i32 0, i32 2, i32 0, i32 1
  %20 = ptrtoint ptr %saddr to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %saddr, align 8
  %ttl = getelementptr inbounds %struct.ip_tunnel_key, ptr %7, i32 0, i32 4
  %21 = ptrtoint ptr %ttl to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %ttl, align 1
  %ttl6 = getelementptr inbounds %struct.mlx5e_tc_tun_route_attr, ptr %attr, i32 0, i32 4
  %23 = ptrtoint ptr %ttl6 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %ttl6, align 4
  %call = call fastcc i32 @mlx5e_route_lookup_ipv4_get(ptr noundef %priv, ptr noundef %mirred_dev, ptr noundef nonnull %attr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %route_dev = getelementptr inbounds %struct.mlx5e_tc_tun_route_attr, ptr %attr, i32 0, i32 1
  %24 = ptrtoint ptr %route_dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %route_dev, align 4
  %priv_flags.i = getelementptr inbounds %struct.net_device, ptr %25, i32 0, i32 15
  %26 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %priv_flags.i, align 16
  %and.i = and i64 %27, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  %add = select i1 %tobool.i.not, i32 34, i32 38
  %tunnel = getelementptr inbounds %struct.mlx5e_encap_entry, ptr %e, i32 0, i32 11
  %28 = ptrtoint ptr %tunnel to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %tunnel, align 4
  %calc_hlen = getelementptr inbounds %struct.mlx5e_tc_tunnel, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %calc_hlen to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %calc_hlen, align 4
  %call9 = call i32 %31(ptr noundef %e) #10
  %add10 = add i32 %add, %call9
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %add10)
  %cmp = icmp slt i32 %and, %add10
  br i1 %cmp, label %do.end, label %if.end8.i.i

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %32 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mdev, align 64
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 8
  %36 = call i32 @llvm.read_register.i32(metadata !56) #10
  %and.i137 = and i32 %36, -16384
  %37 = inttoptr i32 %and.i137 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %39, i32 0, i32 68
  %40 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %pid, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %35, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 255, i32 noundef %41, i32 noundef %add10, i32 noundef %and) #14
  br label %cleanup.sink.split

if.end8.i.i:                                      ; preds = %if.end
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add10, i32 noundef 3520) #15
  %tobool17.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool17.not, label %if.end8.i.i.cleanup.sink.split_crit_edge, label %if.end19

if.end8.i.i.cleanup.sink.split_crit_edge:         ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end19:                                         ; preds = %if.end8.i.i
  %n = getelementptr inbounds %struct.mlx5e_tc_tun_route_attr, ptr %attr, i32 0, i32 3
  %42 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %n, align 8
  %ops = getelementptr inbounds %struct.neighbour, ptr %43, i32 0, i32 21
  %44 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ops, align 8
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %45, align 4
  %family20 = getelementptr inbounds %struct.mlx5e_neigh, ptr %m_neigh, i32 0, i32 1
  %48 = ptrtoint ptr %family20 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %family20, align 4
  %primary_key = getelementptr inbounds %struct.neighbour, ptr %43, i32 0, i32 27
  %tbl = getelementptr inbounds %struct.neighbour, ptr %43, i32 0, i32 1
  %49 = ptrtoint ptr %tbl to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %tbl, align 4
  %key_len = getelementptr inbounds %struct.neigh_table, ptr %50, i32 0, i32 2
  %51 = ptrtoint ptr %key_len to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %key_len, align 4
  %53 = call ptr @memcpy(ptr %m_neigh, ptr %primary_key, i32 %52)
  %54 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %attr, align 8
  %out_dev24 = getelementptr inbounds %struct.mlx5e_encap_entry, ptr %e, i32 0, i32 9
  %56 = ptrtoint ptr %out_dev24 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %55, ptr %out_dev24, align 4
  %57 = ptrtoint ptr %route_dev to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %route_dev, align 4
  %ifindex = getelementptr inbounds %struct.net_device, ptr %58, i32 0, i32 17
  %59 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %ifindex, align 4
  %route_dev_ifindex = getelementptr inbounds %struct.mlx5e_encap_entry, ptr %e, i32 0, i32 10
  %61 = ptrtoint ptr %route_dev_ifindex to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %route_dev_ifindex, align 4
  %add.ptr.i = getelementptr i8, ptr %55, i32 2304
  %dev = getelementptr inbounds %struct.neighbour, ptr %43, i32 0, i32 25
  %62 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev, align 4
  %call29 = call i32 @mlx5e_rep_encap_entry_attach(ptr noundef %add.ptr.i, ptr noundef %e, ptr noundef nonnull %m_neigh, ptr noundef %63) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end32, label %if.end19.free_encap_crit_edge

if.end19.free_encap_crit_edge:                    ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_encap

if.end32:                                         ; preds = %if.end19
  %64 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %n, align 8
  %lock = getelementptr inbounds %struct.neighbour, ptr %65, i32 0, i32 5
  call void @_raw_read_lock_bh(ptr noundef %lock) #10
  %66 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %n, align 8
  %nud_state35 = getelementptr inbounds %struct.neighbour, ptr %67, i32 0, i32 12
  %68 = ptrtoint ptr %nud_state35 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %nud_state35, align 8
  %h_dest = getelementptr inbounds %struct.mlx5e_encap_entry, ptr %e, i32 0, i32 8
  %ha = getelementptr inbounds %struct.neighbour, ptr %67, i32 0, i32 18
  %70 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %ha, align 4
  %72 = ptrtoint ptr %h_dest to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %h_dest, align 4
  %add.ptr.i138 = getelementptr %struct.neighbour, ptr %67, i32 0, i32 18, i32 4
  %73 = ptrtoint ptr %add.ptr.i138 to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %add.ptr.i138, align 2
  %add.ptr1.i = getelementptr %struct.mlx5e_encap_entry, ptr %e, i32 0, i32 8, i32 4
  %75 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 %74, ptr %add.ptr1.i, align 2
  %lock40 = getelementptr inbounds %struct.neighbour, ptr %67, i32 0, i32 5
  call void @_raw_read_unlock_bh(ptr noundef %lock40) #10
  %76 = ptrtoint ptr %route_dev to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %route_dev, align 4
  %78 = ptrtoint ptr %h_dest to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %h_dest, align 4
  %80 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %79, ptr %call9.i.i, align 128
  %81 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %add.ptr1.i, align 2
  %add.ptr1.i.i = getelementptr i8, ptr %call9.i.i, i32 4
  %83 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 %82, ptr %add.ptr1.i.i, align 4
  %h_source.i = getelementptr inbounds %struct.ethhdr, ptr %call9.i.i, i32 0, i32 1
  %dev_addr.i = getelementptr inbounds %struct.net_device, ptr %77, i32 0, i32 86
  %84 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %dev_addr.i, align 64
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %85, align 4
  %88 = ptrtoint ptr %h_source.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %87, ptr %h_source.i, align 4
  %add.ptr.i20.i = getelementptr i8, ptr %85, i32 4
  %89 = ptrtoint ptr %add.ptr.i20.i to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %add.ptr.i20.i, align 2
  %add.ptr1.i21.i = getelementptr %struct.ethhdr, ptr %call9.i.i, i32 0, i32 1, i32 4
  %91 = ptrtoint ptr %add.ptr1.i21.i to i32
  call void @__asan_store2_noabort(i32 %91)
  store i16 %90, ptr %add.ptr1.i21.i, align 2
  %priv_flags.i.i = getelementptr inbounds %struct.net_device, ptr %77, i32 0, i32 15
  %92 = ptrtoint ptr %priv_flags.i.i to i32
  call void @__asan_load8_noabort(i32 %92)
  %93 = load i64, ptr %priv_flags.i.i, align 16
  %and.i.i = and i64 %93, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i139 = getelementptr i8, ptr %call9.i.i, i32 14
  %add.ptr4.i = getelementptr i8, ptr %call9.i.i, i32 18
  %call5.i = call zeroext i16 @vlan_dev_vlan_proto(ptr noundef %77) #10
  %h_proto.i = getelementptr inbounds %struct.ethhdr, ptr %call9.i.i, i32 0, i32 2
  %94 = ptrtoint ptr %h_proto.i to i32
  call void @__asan_store2_noabort(i32 %94)
  store i16 %call5.i, ptr %h_proto.i, align 4
  %call6.i = call zeroext i16 @vlan_dev_vlan_id(ptr noundef %77) #10
  %95 = ptrtoint ptr %add.ptr.i139 to i32
  call void @__asan_store2_noabort(i32 %95)
  store i16 %call6.i, ptr %add.ptr.i139, align 2
  %h_vlan_encapsulated_proto.i = getelementptr i8, ptr %call9.i.i, i32 16
  %96 = ptrtoint ptr %h_vlan_encapsulated_proto.i to i32
  call void @__asan_store2_noabort(i32 %96)
  store i16 2048, ptr %h_vlan_encapsulated_proto.i, align 16
  br label %gen_eth_tnl_hdr.exit

if.else.i:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  %h_proto7.i = getelementptr inbounds %struct.ethhdr, ptr %call9.i.i, i32 0, i32 2
  %97 = ptrtoint ptr %h_proto7.i to i32
  call void @__asan_store2_noabort(i32 %97)
  store i16 2048, ptr %h_proto7.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %call9.i.i, i32 14
  br label %gen_eth_tnl_hdr.exit

gen_eth_tnl_hdr.exit:                             ; preds = %if.else.i, %if.then.i
  %ip.0.i = phi ptr [ %add.ptr4.i, %if.then.i ], [ %add.ptr8.i, %if.else.i ]
  %98 = ptrtoint ptr %tos to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %tos, align 2
  %tos44 = getelementptr inbounds %struct.iphdr, ptr %ip.0.i, i32 0, i32 1
  %100 = ptrtoint ptr %tos44 to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 %99, ptr %tos44, align 1
  %101 = ptrtoint ptr %ip.0.i to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 69, ptr %ip.0.i, align 4
  %102 = ptrtoint ptr %ttl6 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %ttl6, align 4
  %ttl49 = getelementptr inbounds %struct.iphdr, ptr %ip.0.i, i32 0, i32 5
  %104 = ptrtoint ptr %ttl49 to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 %103, ptr %ttl49, align 4
  %105 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %daddr, align 4
  %daddr52 = getelementptr inbounds %struct.iphdr, ptr %ip.0.i, i32 0, i32 9
  %107 = ptrtoint ptr %daddr52 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %106, ptr %daddr52, align 4
  %108 = ptrtoint ptr %saddr to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %saddr, align 8
  %saddr55 = getelementptr inbounds %struct.iphdr, ptr %ip.0.i, i32 0, i32 8
  %110 = ptrtoint ptr %saddr55 to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %109, ptr %saddr55, align 4
  %111 = ptrtoint ptr %tunnel to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %tunnel, align 4
  %tobool.not.i = icmp eq ptr %112, null
  br i1 %tobool.not.i, label %mlx5e_gen_ip_tunnel_header.exit.thread, label %mlx5e_gen_ip_tunnel_header.exit

mlx5e_gen_ip_tunnel_header.exit.thread:           ; preds = %gen_eth_tnl_hdr.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #14
  br label %destroy_neigh_entry

mlx5e_gen_ip_tunnel_header.exit:                  ; preds = %gen_eth_tnl_hdr.exit
  %protocol = getelementptr inbounds %struct.iphdr, ptr %ip.0.i, i32 0, i32 6
  %add.ptr56 = getelementptr i8, ptr %ip.0.i, i32 20
  %generate_ip_tun_hdr.i = getelementptr inbounds %struct.mlx5e_tc_tunnel, ptr %112, i32 0, i32 5
  %113 = ptrtoint ptr %generate_ip_tun_hdr.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %generate_ip_tun_hdr.i, align 4
  %call2.i = call i32 %114(ptr noundef %add.ptr56, ptr noundef %protocol, ptr noundef %e) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool58.not = icmp eq i32 %call2.i, 0
  br i1 %tobool58.not, label %if.end60, label %mlx5e_gen_ip_tunnel_header.exit.destroy_neigh_entry_crit_edge

mlx5e_gen_ip_tunnel_header.exit.destroy_neigh_entry_crit_edge: ; preds = %mlx5e_gen_ip_tunnel_header.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %destroy_neigh_entry

if.end60:                                         ; preds = %mlx5e_gen_ip_tunnel_header.exit
  %encap_size = getelementptr inbounds %struct.mlx5e_encap_entry, ptr %e, i32 0, i32 15
  %115 = ptrtoint ptr %encap_size to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %add10, ptr %encap_size, align 4
  %encap_header61 = getelementptr inbounds %struct.mlx5e_encap_entry, ptr %e, i32 0, i32 14
  %116 = ptrtoint ptr %encap_header61 to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %call9.i.i, ptr %encap_header61, align 4
  %117 = and i8 %69, -34
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %117)
  %tobool64.not = icmp eq i8 %117, 0
  br i1 %tobool64.not, label %if.then65, label %if.end68

if.then65:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #12
  %118 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %n, align 8
  call fastcc void @neigh_event_send(ptr noundef %119)
  br label %cleanup.sink.split

if.end68:                                         ; preds = %if.end60
  %120 = getelementptr inbounds i8, ptr %reformat_params, i32 4
  %121 = ptrtoint ptr %120 to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 0, ptr %120, align 4
  %reformat_type = getelementptr inbounds %struct.mlx5e_encap_entry, ptr %e, i32 0, i32 12
  %122 = ptrtoint ptr %reformat_type to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %reformat_type, align 4
  %124 = ptrtoint ptr %reformat_params to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %123, ptr %reformat_params, align 4
  %size = getelementptr inbounds %struct.mlx5_pkt_reformat_params, ptr %reformat_params, i32 0, i32 3
  %125 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %add10, ptr %size, align 4
  %data = getelementptr inbounds %struct.mlx5_pkt_reformat_params, ptr %reformat_params, i32 0, i32 4
  %126 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr %call9.i.i, ptr %data, align 4
  %127 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %mdev, align 64
  %call70 = call ptr @mlx5_packet_reformat_alloc(ptr noundef %128, ptr noundef nonnull %reformat_params, i32 noundef 8) #10
  %pkt_reformat = getelementptr inbounds %struct.mlx5e_encap_entry, ptr %e, i32 0, i32 5
  %129 = ptrtoint ptr %pkt_reformat to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr %call70, ptr %pkt_reformat, align 4
  %cmp.i = icmp ugt ptr %call70, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then73, label %if.end76

if.then73:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #12
  %130 = ptrtoint ptr %call70 to i32
  br label %destroy_neigh_entry

if.end76:                                         ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #12
  %flags = getelementptr inbounds %struct.mlx5e_encap_entry, ptr %e, i32 0, i32 13
  %131 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %flags, align 4
  %133 = or i8 %132, 1
  store i8 %133, ptr %flags, align 4
  %134 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %attr, align 8
  %add.ptr.i140 = getelementptr i8, ptr %135, i32 2304
  call void @mlx5e_rep_queue_neigh_stats_work(ptr noundef %add.ptr.i140) #10
  br label %cleanup.sink.split

destroy_neigh_entry:                              ; preds = %if.then73, %mlx5e_gen_ip_tunnel_header.exit.destroy_neigh_entry_crit_edge, %mlx5e_gen_ip_tunnel_header.exit.thread
  %err.0 = phi i32 [ %call2.i, %mlx5e_gen_ip_tunnel_header.exit.destroy_neigh_entry_crit_edge ], [ %130, %if.then73 ], [ -95, %mlx5e_gen_ip_tunnel_header.exit.thread ]
  %136 = ptrtoint ptr %out_dev24 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %out_dev24, align 4
  %add.ptr.i141 = getelementptr i8, ptr %137, i32 2304
  call void @mlx5e_rep_encap_entry_detach(ptr noundef %add.ptr.i141, ptr noundef %e) #10
  br label %free_encap

free_encap:                                       ; preds = %destroy_neigh_entry, %if.end19.free_encap_crit_edge
  %err.1 = phi i32 [ %call29, %if.end19.free_encap_crit_edge ], [ %err.0, %destroy_neigh_entry ]
  call void @kfree(ptr noundef nonnull %call9.i.i) #10
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %free_encap, %if.end76, %if.then65, %if.end8.i.i.cleanup.sink.split_crit_edge, %do.end
  %retval.0.ph = phi i32 [ 0, %if.end76 ], [ -95, %do.end ], [ %err.1, %free_encap ], [ 0, %if.then65 ], [ -12, %if.end8.i.i.cleanup.sink.split_crit_edge ]
  call fastcc void @mlx5e_tc_tun_route_attr_cleanup(ptr noundef nonnull %attr) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %attr) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %m_neigh) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %reformat_params) #10
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlx5e_route_lookup_ipv4_get(ptr noundef %priv, ptr noundef %dev, ptr noundef %attr) unnamed_addr #1 align 64 {
entry:
  %route_dev = alloca ptr, align 4
  %out_dev = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %route_dev) #10
  %0 = ptrtoint ptr %route_dev to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %route_dev, align 4, !annotation !66
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out_dev) #10
  %1 = ptrtoint ptr %out_dev to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %out_dev, align 4, !annotation !66
  %mdev1 = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %2 = ptrtoint ptr %mdev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mdev1, align 64
  %call = tail call zeroext i1 @mlx5_lag_is_multipath(ptr noundef %3) #10
  br i1 %call, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %eswitch = getelementptr inbounds %struct.mlx5_core_dev, ptr %3, i32 0, i32 17, i32 28
  %4 = ptrtoint ptr %eswitch to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %eswitch, align 4
  %call3 = tail call ptr @mlx5_eswitch_uplink_get_proto_dev(ptr noundef %5, i8 noundef zeroext 0) #10
  %ifindex = getelementptr inbounds %struct.net_device, ptr %call3, i32 0, i32 17
  %6 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ifindex, align 4
  br label %if.end12.sink.split

if.else:                                          ; preds = %entry
  %call4 = tail call ptr @mlx5e_get_tc_tun(ptr noundef %dev)
  %tobool.not = icmp eq ptr %call4, null
  br i1 %tobool.not, label %if.else.if.end12_crit_edge, label %land.lhs.true

if.else.if.end12_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

land.lhs.true:                                    ; preds = %if.else
  %get_remote_ifindex = getelementptr inbounds %struct.mlx5e_tc_tunnel, ptr %call4, i32 0, i32 9
  %8 = ptrtoint ptr %get_remote_ifindex to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %get_remote_ifindex, align 4
  %tobool5.not = icmp eq ptr %9, null
  br i1 %tobool5.not, label %land.lhs.true.if.end12_crit_edge, label %if.then6

land.lhs.true.if.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.then6:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %call8 = tail call i32 %9(ptr noundef %dev) #10
  br label %if.end12.sink.split

if.end12.sink.split:                              ; preds = %if.then6, %if.then
  %call8.sink = phi i32 [ %call8, %if.then6 ], [ %7, %if.then ]
  %fl9 = getelementptr inbounds %struct.mlx5e_tc_tun_route_attr, ptr %attr, i32 0, i32 2
  %10 = ptrtoint ptr %fl9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call8.sink, ptr %fl9, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.end12.sink.split, %land.lhs.true.if.end12_crit_edge, %if.else.if.end12_crit_edge
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 127
  %11 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %nd_net.i, align 4
  %fl14 = getelementptr inbounds %struct.mlx5e_tc_tun_route_attr, ptr %attr, i32 0, i32 2
  %call.i = tail call ptr @ip_route_output_flow(ptr noundef %12, ptr noundef %fl14, ptr noundef null) #10
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then17, label %if.end19

if.then17:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %call.i to i32
  br label %cleanup

if.end19:                                         ; preds = %if.end12
  %rt_type = getelementptr inbounds %struct.rtable, ptr %call.i, i32 0, i32 3
  %14 = ptrtoint ptr %rt_type to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %rt_type, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %15)
  %cmp.not = icmp eq i16 %15, 1
  br i1 %cmp.not, label %if.end22, label %if.end19.err_rt_release_crit_edge

if.end19.err_rt_release_crit_edge:                ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_rt_release

if.end22:                                         ; preds = %if.end19
  %call23 = tail call zeroext i1 @mlx5_lag_is_multipath(ptr noundef %3) #10
  br i1 %call23, label %land.lhs.true25, label %if.end22.if.end30_crit_edge

if.end22.if.end30_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

land.lhs.true25:                                  ; preds = %if.end22
  %rt_gw_family = getelementptr inbounds %struct.rtable, ptr %call.i, i32 0, i32 7
  %16 = ptrtoint ptr %rt_gw_family to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %rt_gw_family, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %17)
  %cmp27.not = icmp eq i8 %17, 2
  br i1 %cmp27.not, label %land.lhs.true25.if.end30_crit_edge, label %land.lhs.true25.err_rt_release_crit_edge

land.lhs.true25.err_rt_release_crit_edge:         ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_rt_release

land.lhs.true25.if.end30_crit_edge:               ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

if.end30:                                         ; preds = %land.lhs.true25.if.end30_crit_edge, %if.end22.if.end30_crit_edge
  %18 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %call.i, align 4
  %call32 = call fastcc i32 @get_route_and_out_devs(ptr noundef %priv, ptr noundef %19, ptr noundef nonnull %route_dev, ptr noundef nonnull %out_dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %cmp33 = icmp slt i32 %call32, 0
  br i1 %cmp33, label %if.end30.err_rt_release_crit_edge, label %if.end36

if.end30.err_rt_release_crit_edge:                ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_rt_release

if.end36:                                         ; preds = %if.end30
  %20 = ptrtoint ptr %route_dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %route_dev, align 4
  %tobool.not.i = icmp eq ptr %21, null
  br i1 %tobool.not.i, label %if.end36.dev_hold.exit_crit_edge, label %do.body1.i

if.end36.dev_hold.exit_crit_edge:                 ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_hold.exit

do.body1.i:                                       ; preds = %if.end36
  %22 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !67
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %21, i32 0, i32 118
  %23 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pcpu_refcnt.i, align 4
  %25 = ptrtoint ptr %24 to i32
  %26 = tail call i32 @llvm.read_register.i32(metadata !56) #10
  %and.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %29
  %30 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %31, %25
  %32 = inttoptr i32 %add.i to ptr
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %32, align 4
  %add13.i = add i32 %34, 1
  store i32 %add13.i, ptr %32, align 4
  %35 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !68
  %and.i.i.i = and i32 %35, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.do.end30.i_crit_edge, !prof !69

do.body1.i.do.end30.i_crit_edge:                  ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end30.i

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @warn_bogus_irq_restore() #10
  br label %do.end30.i

do.end30.i:                                       ; preds = %if.then28.i, %do.body1.i.do.end30.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %22) #10, !srcloc !70
  br label %dev_hold.exit

dev_hold.exit:                                    ; preds = %do.end30.i, %if.end36.dev_hold.exit_crit_edge
  %ttl = getelementptr inbounds %struct.mlx5e_tc_tun_route_attr, ptr %attr, i32 0, i32 4
  %36 = ptrtoint ptr %ttl to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %ttl, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool37.not = icmp eq i8 %37, 0
  br i1 %tobool37.not, label %if.then38, label %dev_hold.exit.if.end43_crit_edge

dev_hold.exit.if.end43_crit_edge:                 ; preds = %dev_hold.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43

if.then38:                                        ; preds = %dev_hold.exit
  %_metrics.i.i = getelementptr inbounds %struct.dst_entry, ptr %call.i, i32 0, i32 2
  %38 = ptrtoint ptr %_metrics.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %_metrics.i.i, align 4
  %and.i.i84 = and i32 %39, -4
  %40 = inttoptr i32 %and.i.i84 to ptr
  %arrayidx.i.i = getelementptr i32, ptr %40, i32 9
  %41 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp.i85 = icmp eq i32 %42, 0
  br i1 %cmp.i85, label %if.then.i, label %if.then38.ip4_dst_hoplimit.exit_crit_edge

if.then38.ip4_dst_hoplimit.exit_crit_edge:        ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #12
  br label %ip4_dst_hoplimit.exit

if.then.i:                                        ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #12
  %43 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %call.i, align 4
  %nd_net.i.i = getelementptr inbounds %struct.net_device, ptr %44, i32 0, i32 127
  %45 = ptrtoint ptr %nd_net.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %nd_net.i.i, align 4
  %sysctl_ip_default_ttl.i = getelementptr inbounds %struct.net, ptr %46, i32 0, i32 35, i32 37
  %47 = ptrtoint ptr %sysctl_ip_default_ttl.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %sysctl_ip_default_ttl.i, align 2
  %conv.i = zext i8 %48 to i32
  br label %ip4_dst_hoplimit.exit

ip4_dst_hoplimit.exit:                            ; preds = %if.then.i, %if.then38.ip4_dst_hoplimit.exit_crit_edge
  %hoplimit.0.i = phi i32 [ %conv.i, %if.then.i ], [ %42, %if.then38.ip4_dst_hoplimit.exit_crit_edge ]
  %conv41 = trunc i32 %hoplimit.0.i to i8
  %49 = ptrtoint ptr %ttl to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %conv41, ptr %ttl, align 4
  br label %if.end43

if.end43:                                         ; preds = %ip4_dst_hoplimit.exit, %dev_hold.exit.if.end43_crit_edge
  %daddr = getelementptr inbounds %struct.mlx5e_tc_tun_route_attr, ptr %attr, i32 0, i32 2, i32 0, i32 1, i32 0, i32 0, i32 1
  %ops.i = getelementptr inbounds %struct.dst_entry, ptr %call.i, i32 0, i32 1
  %50 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ops.i, align 4
  %neigh_lookup.i = getelementptr inbounds %struct.dst_ops, ptr %51, i32 0, i32 14
  %52 = ptrtoint ptr %neigh_lookup.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %neigh_lookup.i, align 8
  %call.i86 = tail call ptr %53(ptr noundef %call.i, ptr noundef null, ptr noundef %daddr) #10
  %cmp.i.i = icmp ugt ptr %call.i86, inttoptr (i32 -4096 to ptr)
  %tobool47.not99 = icmp eq ptr %call.i86, null
  %tobool47.not = or i1 %cmp.i.i, %tobool47.not99
  br i1 %tobool47.not, label %if.then48, label %if.end49

if.then48:                                        ; preds = %if.end43
  br i1 %tobool.not.i, label %if.then48.err_rt_release_crit_edge, label %do.body1.i96

if.then48.err_rt_release_crit_edge:               ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_rt_release

do.body1.i96:                                     ; preds = %if.then48
  %54 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !67
  %pcpu_refcnt.i88 = getelementptr inbounds %struct.net_device, ptr %21, i32 0, i32 118
  %55 = ptrtoint ptr %pcpu_refcnt.i88 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %pcpu_refcnt.i88, align 4
  %57 = ptrtoint ptr %56 to i32
  %58 = tail call i32 @llvm.read_register.i32(metadata !56) #10
  %and.i.i89 = and i32 %58, -16384
  %59 = inttoptr i32 %and.i.i89 to ptr
  %cpu.i90 = getelementptr inbounds %struct.thread_info, ptr %59, i32 0, i32 3
  %60 = ptrtoint ptr %cpu.i90 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %cpu.i90, align 4
  %arrayidx.i91 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %61
  %62 = ptrtoint ptr %arrayidx.i91 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx.i91, align 4
  %add.i92 = add i32 %63, %57
  %64 = inttoptr i32 %add.i92 to ptr
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %64, align 4
  %add13.i93 = add i32 %66, -1
  store i32 %add13.i93, ptr %64, align 4
  %67 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !68
  %and.i.i.i94 = and i32 %67, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i94)
  %tobool24.not.i95 = icmp eq i32 %and.i.i.i94, 0
  br i1 %tobool24.not.i95, label %if.then28.i97, label %do.body1.i96.do.end30.i98_crit_edge, !prof !69

do.body1.i96.do.end30.i98_crit_edge:              ; preds = %do.body1.i96
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end30.i98

if.then28.i97:                                    ; preds = %do.body1.i96
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @warn_bogus_irq_restore() #10
  br label %do.end30.i98

do.end30.i98:                                     ; preds = %if.then28.i97, %do.body1.i96.do.end30.i98_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %54) #10, !srcloc !70
  br label %err_rt_release

if.end49:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dst_release(ptr noundef %call.i) #10
  %route_dev50 = getelementptr inbounds %struct.mlx5e_tc_tun_route_attr, ptr %attr, i32 0, i32 1
  %68 = ptrtoint ptr %route_dev50 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %21, ptr %route_dev50, align 4
  %69 = ptrtoint ptr %out_dev to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %out_dev, align 4
  %71 = ptrtoint ptr %attr to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %70, ptr %attr, align 8
  %n52 = getelementptr inbounds %struct.mlx5e_tc_tun_route_attr, ptr %attr, i32 0, i32 3
  %72 = ptrtoint ptr %n52 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %call.i86, ptr %n52, align 8
  br label %cleanup

err_rt_release:                                   ; preds = %do.end30.i98, %if.then48.err_rt_release_crit_edge, %if.end30.err_rt_release_crit_edge, %land.lhs.true25.err_rt_release_crit_edge, %if.end19.err_rt_release_crit_edge
  %ret.0 = phi i32 [ %call32, %if.end30.err_rt_release_crit_edge ], [ -101, %if.end19.err_rt_release_crit_edge ], [ -101, %land.lhs.true25.err_rt_release_crit_edge ], [ -12, %if.then48.err_rt_release_crit_edge ], [ -12, %do.end30.i98 ]
  tail call void @dst_release(ptr noundef %call.i) #10
  br label %cleanup

cleanup:                                          ; preds = %err_rt_release, %if.end49, %if.then17
  %retval.0 = phi i32 [ %13, %if.then17 ], [ %ret.0, %err_rt_release ], [ 0, %if.end49 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out_dev) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %route_dev) #10
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_rep_encap_entry_attach(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock_bh(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock_bh(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @neigh_event_send(ptr noundef %neigh) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %used.i = getelementptr inbounds %struct.neighbour, ptr %neigh, i32 0, i32 10
  %1 = ptrtoint ptr %used.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %used.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %0)
  %cmp.not.i = icmp eq i32 %2, %0
  br i1 %cmp.not.i, label %entry.if.end.i_crit_edge, label %do.body5.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

do.body5.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %used.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile i32 %0, ptr %used.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %do.body5.i, %entry.if.end.i_crit_edge
  %nud_state.i = getelementptr inbounds %struct.neighbour, ptr %neigh, i32 0, i32 12
  %4 = ptrtoint ptr %nud_state.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %nud_state.i, align 8
  %6 = and i8 %5, -38
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i = icmp eq i8 %6, 0
  br i1 %tobool.not.i, label %if.then11.i, label %if.end.i.neigh_event_send_probe.exit_crit_edge

if.end.i.neigh_event_send_probe.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %neigh_event_send_probe.exit

if.then11.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call i32 @__neigh_event_send(ptr noundef %neigh, ptr noundef null, i1 noundef zeroext true) #10
  br label %neigh_event_send_probe.exit

neigh_event_send_probe.exit:                      ; preds = %if.then11.i, %if.end.i.neigh_event_send_probe.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_packet_reformat_alloc(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_rep_queue_neigh_stats_work(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_rep_encap_entry_detach(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5e_tc_tun_update_header_ipv4(ptr noundef %priv, ptr noundef %mirred_dev, ptr noundef %e) local_unnamed_addr #1 align 64 {
entry:
  %reformat_params = alloca %struct.mlx5_pkt_reformat_params, align 4
  %attr = alloca %struct.mlx5e_tc_tun_route_attr, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mdev = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %0 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev, align 64
  %arrayidx = getelementptr %struct.mlx5_core_dev, ptr %1, i32 0, i32 8, i32 0, i32 9
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %add.ptr = getelementptr i32, ptr %3, i32 1
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr, align 4
  %and = and i32 %5, 1023
  %tun_info = getelementptr inbounds %struct.mlx5e_encap_entry, ptr %e, i32 0, i32 6
  %6 = ptrtoint ptr %tun_info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tun_info, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %reformat_params) #10
  %8 = call ptr @memset(ptr %reformat_params, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %attr) #10
  %9 = call ptr @memset(ptr %attr, i32 0, i32 104)
  %tos = getelementptr inbounds %struct.ip_tunnel_key, ptr %7, i32 0, i32 3
  %10 = ptrtoint ptr %tos to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %tos, align 2
  %12 = and i8 %11, -4
  %flowic_tos = getelementptr inbounds %struct.mlx5e_tc_tun_route_attr, ptr %attr, i32 0, i32 2, i32 0, i32 0, i32 3
  %13 = ptrtoint ptr %flowic_tos to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %flowic_tos, align 4
  %u = getelementptr inbounds %struct.ip_tunnel_key, ptr %7, i32 0, i32 1
  %dst = getelementptr inbounds %struct.ip_tunnel_key, ptr %7, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 1
  %14 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dst, align 4
  %daddr = getelementptr inbounds %struct.mlx5e_tc_tun_route_attr, ptr %attr, i32 0, i32 2, i32 0, i32 1, i32 0, i32 0, i32 1
  %16 = ptrtoint ptr %daddr to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %daddr, align 4
  %17 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %u, align 8
  %saddr = getelementptr inbounds %struct.mlx5e_tc_tun_route_attr, ptr %attr, i32 0, i32 2, i32 0, i32 1
  %19 = ptrtoint ptr %saddr to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %saddr, align 8
  %ttl = getelementptr inbounds %struct.ip_tunnel_key, ptr %7, i32 0, i32 4
  %20 = ptrtoint ptr %ttl to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %ttl, align 1
  %ttl6 = getelementptr inbounds %struct.mlx5e_tc_tun_route_attr, ptr %attr, i32 0, i32 4
  %22 = ptrtoint ptr %ttl6 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %ttl6, align 4
  %call = call fastcc i32 @mlx5e_route_lookup_ipv4_get(ptr noundef %priv, ptr noundef %mirred_dev, ptr noundef nonnull %attr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %route_dev = getelementptr inbounds %struct.mlx5e_tc_tun_route_attr, ptr %attr, i32 0, i32 1
  %23 = ptrtoint ptr %route_dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %route_dev, align 4
  %priv_flags.i = getelementptr inbounds %struct.net_device, ptr %24, i32 0, i32 15
  %25 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %priv_flags.i, align 16
  %and.i = and i64 %26, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  %add = select i1 %tobool.i.not, i32 34, i32 38
  %tunnel = getelementptr inbounds %struct.mlx5e_encap_entry, ptr %e, i32 0, i32 11
  %27 = ptrtoint ptr %tunnel to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %tunnel, align 4
  %calc_hlen = getelementptr inbounds %struct.mlx5e_tc_tunnel, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %calc_hlen to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %calc_hlen, align 4
  %call9 = call i32 %30(ptr noundef %e) #10
  %add10 = add i32 %add, %call9
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %add10)
  %cmp = icmp slt i32 %and, %add10
  br i1 %cmp, label %do.end, label %if.end8.i.i

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %31 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mdev, align 64
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 8
  %35 = call i32 @llvm.read_register.i32(metadata !56) #10
  %and.i128 = and i32 %35, -16384
  %36 = inttoptr i32 %and.i128 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %38, i32 0, i32 68
  %39 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %pid, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %34, ptr noundef nonnull @.str, ptr noundef nonnull @.str.5, i32 noundef 370, i32 noundef %40, i32 noundef %add10, i32 noundef %and) #14
  br label %cleanup.sink.split

if.end8.i.i:                                      ; preds = %if.end
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add10, i32 noundef 3520) #15
  %tobool17.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool17.not, label %if.end8.i.i.cleanup.sink.split_crit_edge, label %if.end19

if.end8.i.i.cleanup.sink.split_crit_edge:         ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end19:                                         ; preds = %if.end8.i.i
  %41 = ptrtoint ptr %route_dev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %route_dev, align 4
  %ifindex = getelementptr inbounds %struct.net_device, ptr %42, i32 0, i32 17
  %43 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %ifindex, align 4
  %route_dev_ifindex = getelementptr inbounds %struct.mlx5e_encap_entry, ptr %e, i32 0, i32 10
  %45 = ptrtoint ptr %route_dev_ifindex to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %route_dev_ifindex, align 4
  %n = getelementptr inbounds %struct.mlx5e_tc_tun_route_attr, ptr %attr, i32 0, i32 3
  %46 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %n, align 8
  %lock = getelementptr inbounds %struct.neighbour, ptr %47, i32 0, i32 5
  call void @_raw_read_lock_bh(ptr noundef %lock) #10
  %48 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %n, align 8
  %nud_state22 = getelementptr inbounds %struct.neighbour, ptr %49, i32 0, i32 12
  %50 = ptrtoint ptr %nud_state22 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %nud_state22, align 8
  %h_dest = getelementptr inbounds %struct.mlx5e_encap_entry, ptr %e, i32 0, i32 8
  %ha = getelementptr inbounds %struct.neighbour, ptr %49, i32 0, i32 18
  %52 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %ha, align 4
  %54 = ptrtoint ptr %h_dest to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %h_dest, align 4
  %add.ptr.i = getelementptr %struct.neighbour, ptr %49, i32 0, i32 18, i32 4
  %55 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr %struct.mlx5e_encap_entry, ptr %e, i32 0, i32 8, i32 4
  %57 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %56, ptr %add.ptr1.i, align 2
  %dev = getelementptr inbounds %struct.neighbour, ptr %49, i32 0, i32 25
  %58 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev, align 4
  %60 = ptrtoint ptr %e to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %e, align 4
  %neigh_dev = getelementptr inbounds %struct.mlx5e_neigh_hash_entry, ptr %61, i32 0, i32 3
  %62 = ptrtoint ptr %neigh_dev to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile ptr %59, ptr %neigh_dev, align 4
  %63 = load ptr, ptr %n, align 8
  %lock37 = getelementptr inbounds %struct.neighbour, ptr %63, i32 0, i32 5
  call void @_raw_read_unlock_bh(ptr noundef %lock37) #10
  %64 = ptrtoint ptr %route_dev to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %route_dev, align 4
  %66 = ptrtoint ptr %h_dest to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %h_dest, align 4
  %68 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %call9.i.i, align 128
  %69 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %add.ptr1.i, align 2
  %add.ptr1.i.i = getelementptr i8, ptr %call9.i.i, i32 4
  %71 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 %70, ptr %add.ptr1.i.i, align 4
  %h_source.i = getelementptr inbounds %struct.ethhdr, ptr %call9.i.i, i32 0, i32 1
  %dev_addr.i = getelementptr inbounds %struct.net_device, ptr %65, i32 0, i32 86
  %72 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %dev_addr.i, align 64
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %73, align 4
  %76 = ptrtoint ptr %h_source.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %h_source.i, align 4
  %add.ptr.i20.i = getelementptr i8, ptr %73, i32 4
  %77 = ptrtoint ptr %add.ptr.i20.i to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %add.ptr.i20.i, align 2
  %add.ptr1.i21.i = getelementptr %struct.ethhdr, ptr %call9.i.i, i32 0, i32 1, i32 4
  %79 = ptrtoint ptr %add.ptr1.i21.i to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 %78, ptr %add.ptr1.i21.i, align 2
  %priv_flags.i.i = getelementptr inbounds %struct.net_device, ptr %65, i32 0, i32 15
  %80 = ptrtoint ptr %priv_flags.i.i to i32
  call void @__asan_load8_noabort(i32 %80)
  %81 = load i64, ptr %priv_flags.i.i, align 16
  %and.i.i = and i64 %81, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i129 = getelementptr i8, ptr %call9.i.i, i32 14
  %add.ptr4.i = getelementptr i8, ptr %call9.i.i, i32 18
  %call5.i = call zeroext i16 @vlan_dev_vlan_proto(ptr noundef %65) #10
  %h_proto.i = getelementptr inbounds %struct.ethhdr, ptr %call9.i.i, i32 0, i32 2
  %82 = ptrtoint ptr %h_proto.i to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 %call5.i, ptr %h_proto.i, align 4
  %call6.i = call zeroext i16 @vlan_dev_vlan_id(ptr noundef %65) #10
  %83 = ptrtoint ptr %add.ptr.i129 to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 %call6.i, ptr %add.ptr.i129, align 2
  %h_vlan_encapsulated_proto.i = getelementptr i8, ptr %call9.i.i, i32 16
  %84 = ptrtoint ptr %h_vlan_encapsulated_proto.i to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 2048, ptr %h_vlan_encapsulated_proto.i, align 16
  br label %gen_eth_tnl_hdr.exit

if.else.i:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  %h_proto7.i = getelementptr inbounds %struct.ethhdr, ptr %call9.i.i, i32 0, i32 2
  %85 = ptrtoint ptr %h_proto7.i to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 2048, ptr %h_proto7.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %call9.i.i, i32 14
  br label %gen_eth_tnl_hdr.exit

gen_eth_tnl_hdr.exit:                             ; preds = %if.else.i, %if.then.i
  %ip.0.i = phi ptr [ %add.ptr4.i, %if.then.i ], [ %add.ptr8.i, %if.else.i ]
  %86 = ptrtoint ptr %tos to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %tos, align 2
  %tos41 = getelementptr inbounds %struct.iphdr, ptr %ip.0.i, i32 0, i32 1
  %88 = ptrtoint ptr %tos41 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %87, ptr %tos41, align 1
  %89 = ptrtoint ptr %ip.0.i to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 69, ptr %ip.0.i, align 4
  %90 = ptrtoint ptr %ttl6 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %ttl6, align 4
  %ttl46 = getelementptr inbounds %struct.iphdr, ptr %ip.0.i, i32 0, i32 5
  %92 = ptrtoint ptr %ttl46 to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %91, ptr %ttl46, align 4
  %93 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %daddr, align 4
  %daddr49 = getelementptr inbounds %struct.iphdr, ptr %ip.0.i, i32 0, i32 9
  %95 = ptrtoint ptr %daddr49 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %94, ptr %daddr49, align 4
  %96 = ptrtoint ptr %saddr to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %saddr, align 8
  %saddr52 = getelementptr inbounds %struct.iphdr, ptr %ip.0.i, i32 0, i32 8
  %98 = ptrtoint ptr %saddr52 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %97, ptr %saddr52, align 4
  %99 = ptrtoint ptr %tunnel to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %tunnel, align 4
  %tobool.not.i = icmp eq ptr %100, null
  br i1 %tobool.not.i, label %mlx5e_gen_ip_tunnel_header.exit.thread, label %mlx5e_gen_ip_tunnel_header.exit

mlx5e_gen_ip_tunnel_header.exit.thread:           ; preds = %gen_eth_tnl_hdr.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #14
  br label %free_encap

mlx5e_gen_ip_tunnel_header.exit:                  ; preds = %gen_eth_tnl_hdr.exit
  %protocol = getelementptr inbounds %struct.iphdr, ptr %ip.0.i, i32 0, i32 6
  %add.ptr53 = getelementptr i8, ptr %ip.0.i, i32 20
  %generate_ip_tun_hdr.i = getelementptr inbounds %struct.mlx5e_tc_tunnel, ptr %100, i32 0, i32 5
  %101 = ptrtoint ptr %generate_ip_tun_hdr.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %generate_ip_tun_hdr.i, align 4
  %call2.i = call i32 %102(ptr noundef %add.ptr53, ptr noundef %protocol, ptr noundef %e) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool55.not = icmp eq i32 %call2.i, 0
  br i1 %tobool55.not, label %if.end57, label %mlx5e_gen_ip_tunnel_header.exit.free_encap_crit_edge

mlx5e_gen_ip_tunnel_header.exit.free_encap_crit_edge: ; preds = %mlx5e_gen_ip_tunnel_header.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_encap

if.end57:                                         ; preds = %mlx5e_gen_ip_tunnel_header.exit
  %encap_size = getelementptr inbounds %struct.mlx5e_encap_entry, ptr %e, i32 0, i32 15
  %103 = ptrtoint ptr %encap_size to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %add10, ptr %encap_size, align 4
  %encap_header58 = getelementptr inbounds %struct.mlx5e_encap_entry, ptr %e, i32 0, i32 14
  %104 = ptrtoint ptr %encap_header58 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %encap_header58, align 4
  call void @kfree(ptr noundef %105) #10
  %106 = ptrtoint ptr %encap_header58 to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %call9.i.i, ptr %encap_header58, align 4
  %107 = and i8 %51, -34
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %107)
  %tobool62.not = icmp eq i8 %107, 0
  br i1 %tobool62.not, label %if.then63, label %if.end66

if.then63:                                        ; preds = %if.end57
  %108 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %n, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %110 = load volatile i32, ptr @jiffies, align 128
  %used.i.i = getelementptr inbounds %struct.neighbour, ptr %109, i32 0, i32 10
  %111 = ptrtoint ptr %used.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load volatile i32, ptr %used.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %112, i32 %110)
  %cmp.not.i.i = icmp eq i32 %112, %110
  br i1 %cmp.not.i.i, label %if.then63.if.end.i.i130_crit_edge, label %do.body5.i.i

if.then63.if.end.i.i130_crit_edge:                ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i130

do.body5.i.i:                                     ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #12
  %113 = ptrtoint ptr %used.i.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store volatile i32 %110, ptr %used.i.i, align 8
  br label %if.end.i.i130

if.end.i.i130:                                    ; preds = %do.body5.i.i, %if.then63.if.end.i.i130_crit_edge
  %nud_state.i.i = getelementptr inbounds %struct.neighbour, ptr %109, i32 0, i32 12
  %114 = ptrtoint ptr %nud_state.i.i to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %nud_state.i.i, align 8
  %116 = and i8 %115, -38
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %116)
  %tobool.not.i.i = icmp eq i8 %116, 0
  br i1 %tobool.not.i.i, label %if.then11.i.i, label %if.end.i.i130.cleanup.sink.split_crit_edge

if.end.i.i130.cleanup.sink.split_crit_edge:       ; preds = %if.end.i.i130
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.then11.i.i:                                    ; preds = %if.end.i.i130
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i = call i32 @__neigh_event_send(ptr noundef %109, ptr noundef null, i1 noundef zeroext true) #10
  br label %cleanup.sink.split

if.end66:                                         ; preds = %if.end57
  %117 = getelementptr inbounds i8, ptr %reformat_params, i32 4
  %118 = ptrtoint ptr %117 to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 0, ptr %117, align 4
  %reformat_type = getelementptr inbounds %struct.mlx5e_encap_entry, ptr %e, i32 0, i32 12
  %119 = ptrtoint ptr %reformat_type to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %reformat_type, align 4
  %121 = ptrtoint ptr %reformat_params to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %120, ptr %reformat_params, align 4
  %size = getelementptr inbounds %struct.mlx5_pkt_reformat_params, ptr %reformat_params, i32 0, i32 3
  %122 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %add10, ptr %size, align 4
  %data = getelementptr inbounds %struct.mlx5_pkt_reformat_params, ptr %reformat_params, i32 0, i32 4
  %123 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr %call9.i.i, ptr %data, align 4
  %124 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %mdev, align 64
  %call68 = call ptr @mlx5_packet_reformat_alloc(ptr noundef %125, ptr noundef nonnull %reformat_params, i32 noundef 8) #10
  %pkt_reformat = getelementptr inbounds %struct.mlx5e_encap_entry, ptr %e, i32 0, i32 5
  %126 = ptrtoint ptr %pkt_reformat to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr %call68, ptr %pkt_reformat, align 4
  %cmp.i = icmp ugt ptr %call68, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then71, label %if.end74

if.then71:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #12
  %127 = ptrtoint ptr %call68 to i32
  br label %free_encap

if.end74:                                         ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #12
  %flags = getelementptr inbounds %struct.mlx5e_encap_entry, ptr %e, i32 0, i32 13
  %128 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %flags, align 4
  %130 = or i8 %129, 1
  store i8 %130, ptr %flags, align 4
  %131 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %attr, align 8
  %add.ptr.i131 = getelementptr i8, ptr %132, i32 2304
  call void @mlx5e_rep_queue_neigh_stats_work(ptr noundef %add.ptr.i131) #10
  br label %cleanup.sink.split

free_encap:                                       ; preds = %if.then71, %mlx5e_gen_ip_tunnel_header.exit.free_encap_crit_edge, %mlx5e_gen_ip_tunnel_header.exit.thread
  %err.0 = phi i32 [ %call2.i, %mlx5e_gen_ip_tunnel_header.exit.free_encap_crit_edge ], [ %127, %if.then71 ], [ -95, %mlx5e_gen_ip_tunnel_header.exit.thread ]
  call void @kfree(ptr noundef nonnull %call9.i.i) #10
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %free_encap, %if.end74, %if.then11.i.i, %if.end.i.i130.cleanup.sink.split_crit_edge, %if.end8.i.i.cleanup.sink.split_crit_edge, %do.end
  %retval.0.ph = phi i32 [ 0, %if.end74 ], [ -95, %do.end ], [ %err.0, %free_encap ], [ -12, %if.end8.i.i.cleanup.sink.split_crit_edge ], [ 0, %if.end.i.i130.cleanup.sink.split_crit_edge ], [ 0, %if.then11.i.i ]
  call fastcc void @mlx5e_tc_tun_route_attr_cleanup(ptr noundef nonnull %attr) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %attr) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %reformat_params) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5e_tc_tun_create_header_ipv6(ptr noundef %priv, ptr noundef %mirred_dev, ptr noundef %e) local_unnamed_addr #1 align 64 {
entry:
  %reformat_params = alloca %struct.mlx5_pkt_reformat_params, align 4
  %m_neigh = alloca %struct.mlx5e_neigh, align 4
  %attr = alloca %struct.mlx5e_tc_tun_route_attr, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mdev = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %0 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev, align 64
  %arrayidx = getelementptr %struct.mlx5_core_dev, ptr %1, i32 0, i32 8, i32 0, i32 9
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %add.ptr = getelementptr i32, ptr %3, i32 1
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr, align 4
  %and = and i32 %5, 1023
  %tun_info = getelementptr inbounds %struct.mlx5e_encap_entry, ptr %e, i32 0, i32 6
  %6 = ptrtoint ptr %tun_info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tun_info, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %reformat_params) #10
  %8 = call ptr @memset(ptr %reformat_params, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %m_neigh) #10
  %9 = call ptr @memset(ptr %m_neigh, i32 0, i32 20)
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %attr) #10
  %10 = call ptr @memset(ptr %attr, i32 0, i32 104)
  %ttl = getelementptr inbounds %struct.ip_tunnel_key, ptr %7, i32 0, i32 4
  %11 = ptrtoint ptr %ttl to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %ttl, align 1
  %ttl1 = getelementptr inbounds %struct.mlx5e_tc_tun_route_attr, ptr %attr, i32 0, i32 4
  %13 = ptrtoint ptr %ttl1 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %ttl1, align 4
  %tos = getelementptr inbounds %struct.ip_tunnel_key, ptr %7, i32 0, i32 3
  %14 = ptrtoint ptr %tos to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %tos, align 2
  %16 = and i8 %15, 30
  %and2 = zext i8 %16 to i32
  %label = getelementptr inbounds %struct.ip_tunnel_key, ptr %7, i32 0, i32 5
  %17 = ptrtoint ptr %label to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %label, align 4
  %shl.i = shl nuw nsw i32 %and2, 20
  %or.i = or i32 %shl.i, %18
  %flowlabel = getelementptr inbounds %struct.mlx5e_tc_tun_route_attr, ptr %attr, i32 0, i32 2, i32 0, i32 3
  %19 = ptrtoint ptr %flowlabel to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %or.i, ptr %flowlabel, align 8
  %daddr = getelementptr inbounds %struct.mlx5e_tc_tun_route_attr, ptr %attr, i32 0, i32 2, i32 0, i32 1
  %u = getelementptr inbounds %struct.ip_tunnel_key, ptr %7, i32 0, i32 1
  %dst = getelementptr inbounds %struct.ip_tunnel_key, ptr %7, i32 0, i32 1, i32 0, i32 1
  %20 = call ptr @memcpy(ptr %daddr, ptr %dst, i32 16)
  %saddr = getelementptr inbounds %struct.mlx5e_tc_tun_route_attr, ptr %attr, i32 0, i32 2, i32 0, i32 2
  %21 = call ptr @memcpy(ptr %saddr, ptr %u, i32 16)
  %call6 = call fastcc i32 @mlx5e_route_lookup_ipv6_get(ptr noundef %priv, ptr noundef %mirred_dev, ptr noundef nonnull %attr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %route_dev = getelementptr inbounds %struct.mlx5e_tc_tun_route_attr, ptr %attr, i32 0, i32 1
  %22 = ptrtoint ptr %route_dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %route_dev, align 4
  %priv_flags.i = getelementptr inbounds %struct.net_device, ptr %23, i32 0, i32 15
  %24 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %priv_flags.i, align 16
  %and.i = and i64 %25, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  %add = select i1 %tobool.i.not, i32 54, i32 58
  %tunnel = getelementptr inbounds %struct.mlx5e_encap_entry, ptr %e, i32 0, i32 11
  %26 = ptrtoint ptr %tunnel to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %tunnel, align 4
  %calc_hlen = getelementptr inbounds %struct.mlx5e_tc_tunnel, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %calc_hlen to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %calc_hlen, align 4
  %call9 = call i32 %29(ptr noundef %e) #10
  %add10 = add i32 %add, %call9
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %add10)
  %cmp = icmp slt i32 %and, %add10
  br i1 %cmp, label %do.end, label %if.end8.i.i

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %30 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mdev, align 64
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 8
  %34 = call i32 @llvm.read_register.i32(metadata !56) #10
  %and.i132 = and i32 %34, -16384
  %35 = inttoptr i32 %and.i132 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %37, i32 0, i32 68
  %38 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %pid, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %33, ptr noundef nonnull @.str, ptr noundef nonnull @.str.6, i32 noundef 524, i32 noundef %39, i32 noundef %add10, i32 noundef %and) #14
  br label %cleanup.sink.split

if.end8.i.i:                                      ; preds = %if.end
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add10, i32 noundef 3520) #15
  %tobool17.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool17.not, label %if.end8.i.i.cleanup.sink.split_crit_edge, label %if.end19

if.end8.i.i.cleanup.sink.split_crit_edge:         ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end19:                                         ; preds = %if.end8.i.i
  %n = getelementptr inbounds %struct.mlx5e_tc_tun_route_attr, ptr %attr, i32 0, i32 3
  %40 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %n, align 8
  %ops = getelementptr inbounds %struct.neighbour, ptr %41, i32 0, i32 21
  %42 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ops, align 8
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %43, align 4
  %family20 = getelementptr inbounds %struct.mlx5e_neigh, ptr %m_neigh, i32 0, i32 1
  %46 = ptrtoint ptr %family20 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %family20, align 4
  %primary_key = getelementptr inbounds %struct.neighbour, ptr %41, i32 0, i32 27
  %tbl = getelementptr inbounds %struct.neighbour, ptr %41, i32 0, i32 1
  %47 = ptrtoint ptr %tbl to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %tbl, align 4
  %key_len = getelementptr inbounds %struct.neigh_table, ptr %48, i32 0, i32 2
  %49 = ptrtoint ptr %key_len to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %key_len, align 4
  %51 = call ptr @memcpy(ptr %m_neigh, ptr %primary_key, i32 %50)
  %52 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %attr, align 8
  %out_dev24 = getelementptr inbounds %struct.mlx5e_encap_entry, ptr %e, i32 0, i32 9
  %54 = ptrtoint ptr %out_dev24 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %53, ptr %out_dev24, align 4
  %55 = ptrtoint ptr %route_dev to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %route_dev, align 4
  %ifindex = getelementptr inbounds %struct.net_device, ptr %56, i32 0, i32 17
  %57 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %ifindex, align 4
  %route_dev_ifindex = getelementptr inbounds %struct.mlx5e_encap_entry, ptr %e, i32 0, i32 10
  %59 = ptrtoint ptr %route_dev_ifindex to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %route_dev_ifindex, align 4
  %add.ptr.i = getelementptr i8, ptr %53, i32 2304
  %dev = getelementptr inbounds %struct.neighbour, ptr %41, i32 0, i32 25
  %60 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev, align 4
  %call29 = call i32 @mlx5e_rep_encap_entry_attach(ptr noundef %add.ptr.i, ptr noundef %e, ptr noundef nonnull %m_neigh, ptr noundef %61) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end32, label %if.end19.free_encap_crit_edge

if.end19.free_encap_crit_edge:                    ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_encap

if.end32:                                         ; preds = %if.end19
  %62 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %n, align 8
  %lock = getelementptr inbounds %struct.neighbour, ptr %63, i32 0, i32 5
  call void @_raw_read_lock_bh(ptr noundef %lock) #10
  %64 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %n, align 8
  %nud_state35 = getelementptr inbounds %struct.neighbour, ptr %65, i32 0, i32 12
  %66 = ptrtoint ptr %nud_state35 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %nud_state35, align 8
  %h_dest = getelementptr inbounds %struct.mlx5e_encap_entry, ptr %e, i32 0, i32 8
  %ha = getelementptr inbounds %struct.neighbour, ptr %65, i32 0, i32 18
  %68 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %ha, align 4
  %70 = ptrtoint ptr %h_dest to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %h_dest, align 4
  %add.ptr.i133 = getelementptr %struct.neighbour, ptr %65, i32 0, i32 18, i32 4
  %71 = ptrtoint ptr %add.ptr.i133 to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %add.ptr.i133, align 2
  %add.ptr1.i = getelementptr %struct.mlx5e_encap_entry, ptr %e, i32 0, i32 8, i32 4
  %73 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 %72, ptr %add.ptr1.i, align 2
  %lock40 = getelementptr inbounds %struct.neighbour, ptr %65, i32 0, i32 5
  call void @_raw_read_unlock_bh(ptr noundef %lock40) #10
  %74 = ptrtoint ptr %route_dev to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %route_dev, align 4
  %76 = ptrtoint ptr %h_dest to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %h_dest, align 4
  %78 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %77, ptr %call9.i.i, align 128
  %79 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %add.ptr1.i, align 2
  %add.ptr1.i.i = getelementptr i8, ptr %call9.i.i, i32 4
  %81 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 %80, ptr %add.ptr1.i.i, align 4
  %h_source.i = getelementptr inbounds %struct.ethhdr, ptr %call9.i.i, i32 0, i32 1
  %dev_addr.i = getelementptr inbounds %struct.net_device, ptr %75, i32 0, i32 86
  %82 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %dev_addr.i, align 64
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %83, align 4
  %86 = ptrtoint ptr %h_source.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %85, ptr %h_source.i, align 4
  %add.ptr.i20.i = getelementptr i8, ptr %83, i32 4
  %87 = ptrtoint ptr %add.ptr.i20.i to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %add.ptr.i20.i, align 2
  %add.ptr1.i21.i = getelementptr %struct.ethhdr, ptr %call9.i.i, i32 0, i32 1, i32 4
  %89 = ptrtoint ptr %add.ptr1.i21.i to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 %88, ptr %add.ptr1.i21.i, align 2
  %priv_flags.i.i = getelementptr inbounds %struct.net_device, ptr %75, i32 0, i32 15
  %90 = ptrtoint ptr %priv_flags.i.i to i32
  call void @__asan_load8_noabort(i32 %90)
  %91 = load i64, ptr %priv_flags.i.i, align 16
  %and.i.i = and i64 %91, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i134 = getelementptr i8, ptr %call9.i.i, i32 14
  %add.ptr4.i = getelementptr i8, ptr %call9.i.i, i32 18
  %call5.i = call zeroext i16 @vlan_dev_vlan_proto(ptr noundef %75) #10
  %h_proto.i = getelementptr inbounds %struct.ethhdr, ptr %call9.i.i, i32 0, i32 2
  %92 = ptrtoint ptr %h_proto.i to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 %call5.i, ptr %h_proto.i, align 4
  %call6.i = call zeroext i16 @vlan_dev_vlan_id(ptr noundef %75) #10
  %93 = ptrtoint ptr %add.ptr.i134 to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 %call6.i, ptr %add.ptr.i134, align 2
  %h_vlan_encapsulated_proto.i = getelementptr i8, ptr %call9.i.i, i32 16
  %94 = ptrtoint ptr %h_vlan_encapsulated_proto.i to i32
  call void @__asan_store2_noabort(i32 %94)
  store i16 -31011, ptr %h_vlan_encapsulated_proto.i, align 16
  br label %gen_eth_tnl_hdr.exit

if.else.i:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  %h_proto7.i = getelementptr inbounds %struct.ethhdr, ptr %call9.i.i, i32 0, i32 2
  %95 = ptrtoint ptr %h_proto7.i to i32
  call void @__asan_store2_noabort(i32 %95)
  store i16 -31011, ptr %h_proto7.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %call9.i.i, i32 14
  br label %gen_eth_tnl_hdr.exit

gen_eth_tnl_hdr.exit:                             ; preds = %if.else.i, %if.then.i
  %ip.0.i = phi ptr [ %add.ptr4.i, %if.then.i ], [ %add.ptr8.i, %if.else.i ]
  %96 = ptrtoint ptr %tos to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %tos, align 2
  %conv44 = zext i8 %97 to i32
  %shl.i135 = shl nuw nsw i32 %conv44, 20
  %or.i136 = or i32 %shl.i135, 1610612736
  %98 = ptrtoint ptr %ip.0.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %or.i136, ptr %ip.0.i, align 4
  %99 = ptrtoint ptr %ttl1 to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %ttl1, align 4
  %hop_limit = getelementptr inbounds %struct.ipv6hdr, ptr %ip.0.i, i32 0, i32 4
  %101 = ptrtoint ptr %hop_limit to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 %100, ptr %hop_limit, align 1
  %daddr46 = getelementptr inbounds %struct.ipv6hdr, ptr %ip.0.i, i32 0, i32 6
  %102 = call ptr @memcpy(ptr %daddr46, ptr %daddr, i32 16)
  %saddr49 = getelementptr inbounds %struct.ipv6hdr, ptr %ip.0.i, i32 0, i32 5
  %103 = call ptr @memcpy(ptr %saddr49, ptr %saddr, i32 16)
  %104 = ptrtoint ptr %tunnel to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %tunnel, align 4
  %tobool.not.i = icmp eq ptr %105, null
  br i1 %tobool.not.i, label %mlx5e_gen_ip_tunnel_header.exit.thread, label %mlx5e_gen_ip_tunnel_header.exit

mlx5e_gen_ip_tunnel_header.exit.thread:           ; preds = %gen_eth_tnl_hdr.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #14
  br label %destroy_neigh_entry

mlx5e_gen_ip_tunnel_header.exit:                  ; preds = %gen_eth_tnl_hdr.exit
  %nexthdr = getelementptr inbounds %struct.ipv6hdr, ptr %ip.0.i, i32 0, i32 3
  %add.ptr52 = getelementptr i8, ptr %ip.0.i, i32 40
  %generate_ip_tun_hdr.i = getelementptr inbounds %struct.mlx5e_tc_tunnel, ptr %105, i32 0, i32 5
  %106 = ptrtoint ptr %generate_ip_tun_hdr.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %generate_ip_tun_hdr.i, align 4
  %call2.i = call i32 %107(ptr noundef %add.ptr52, ptr noundef %nexthdr, ptr noundef %e) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool54.not = icmp eq i32 %call2.i, 0
  br i1 %tobool54.not, label %if.end56, label %mlx5e_gen_ip_tunnel_header.exit.destroy_neigh_entry_crit_edge

mlx5e_gen_ip_tunnel_header.exit.destroy_neigh_entry_crit_edge: ; preds = %mlx5e_gen_ip_tunnel_header.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %destroy_neigh_entry

if.end56:                                         ; preds = %mlx5e_gen_ip_tunnel_header.exit
  %encap_size = getelementptr inbounds %struct.mlx5e_encap_entry, ptr %e, i32 0, i32 15
  %108 = ptrtoint ptr %encap_size to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %add10, ptr %encap_size, align 4
  %encap_header57 = getelementptr inbounds %struct.mlx5e_encap_entry, ptr %e, i32 0, i32 14
  %109 = ptrtoint ptr %encap_header57 to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %call9.i.i, ptr %encap_header57, align 4
  %110 = and i8 %67, -34
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %110)
  %tobool60.not = icmp eq i8 %110, 0
  br i1 %tobool60.not, label %if.then61, label %if.end64

if.then61:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #12
  %111 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %n, align 8
  call fastcc void @neigh_event_send(ptr noundef %112)
  br label %cleanup.sink.split

if.end64:                                         ; preds = %if.end56
  %113 = getelementptr inbounds i8, ptr %reformat_params, i32 4
  %114 = ptrtoint ptr %113 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 0, ptr %113, align 4
  %reformat_type = getelementptr inbounds %struct.mlx5e_encap_entry, ptr %e, i32 0, i32 12
  %115 = ptrtoint ptr %reformat_type to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %reformat_type, align 4
  %117 = ptrtoint ptr %reformat_params to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %116, ptr %reformat_params, align 4
  %size = getelementptr inbounds %struct.mlx5_pkt_reformat_params, ptr %reformat_params, i32 0, i32 3
  %118 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %add10, ptr %size, align 4
  %data = getelementptr inbounds %struct.mlx5_pkt_reformat_params, ptr %reformat_params, i32 0, i32 4
  %119 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %call9.i.i, ptr %data, align 4
  %120 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %mdev, align 64
  %call66 = call ptr @mlx5_packet_reformat_alloc(ptr noundef %121, ptr noundef nonnull %reformat_params, i32 noundef 8) #10
  %pkt_reformat = getelementptr inbounds %struct.mlx5e_encap_entry, ptr %e, i32 0, i32 5
  %122 = ptrtoint ptr %pkt_reformat to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr %call66, ptr %pkt_reformat, align 4
  %cmp.i = icmp ugt ptr %call66, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then69, label %if.end72

if.then69:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #12
  %123 = ptrtoint ptr %call66 to i32
  br label %destroy_neigh_entry

if.end72:                                         ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #12
  %flags = getelementptr inbounds %struct.mlx5e_encap_entry, ptr %e, i32 0, i32 13
  %124 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %flags, align 4
  %126 = or i8 %125, 1
  store i8 %126, ptr %flags, align 4
  %127 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %attr, align 8
  %add.ptr.i137 = getelementptr i8, ptr %128, i32 2304
  call void @mlx5e_rep_queue_neigh_stats_work(ptr noundef %add.ptr.i137) #10
  br label %cleanup.sink.split

destroy_neigh_entry:                              ; preds = %if.then69, %mlx5e_gen_ip_tunnel_header.exit.destroy_neigh_entry_crit_edge, %mlx5e_gen_ip_tunnel_header.exit.thread
  %err.0 = phi i32 [ %call2.i, %mlx5e_gen_ip_tunnel_header.exit.destroy_neigh_entry_crit_edge ], [ %123, %if.then69 ], [ -95, %mlx5e_gen_ip_tunnel_header.exit.thread ]
  %129 = ptrtoint ptr %out_dev24 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %out_dev24, align 4
  %add.ptr.i138 = getelementptr i8, ptr %130, i32 2304
  call void @mlx5e_rep_encap_entry_detach(ptr noundef %add.ptr.i138, ptr noundef %e) #10
  br label %free_encap

free_encap:                                       ; preds = %destroy_neigh_entry, %if.end19.free_encap_crit_edge
  %err.1 = phi i32 [ %call29, %if.end19.free_encap_crit_edge ], [ %err.0, %destroy_neigh_entry ]
  call void @kfree(ptr noundef nonnull %call9.i.i) #10
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %free_encap, %if.end72, %if.then61, %if.end8.i.i.cleanup.sink.split_crit_edge, %do.end
  %retval.0.ph = phi i32 [ 0, %if.end72 ], [ -95, %do.end ], [ %err.1, %free_encap ], [ 0, %if.then61 ], [ -12, %if.end8.i.i.cleanup.sink.split_crit_edge ]
  call fastcc void @mlx5e_tc_tun_route_attr_cleanup(ptr noundef nonnull %attr) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %attr) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %m_neigh) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %reformat_params) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlx5e_route_lookup_ipv6_get(ptr noundef %priv, ptr noundef %dev, ptr noundef %attr) unnamed_addr #1 align 64 {
entry:
  %route_dev = alloca ptr, align 4
  %out_dev = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @mlx5e_get_tc_tun(ptr noundef %dev)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %route_dev) #10
  %0 = ptrtoint ptr %route_dev to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %route_dev, align 4, !annotation !66
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out_dev) #10
  %1 = ptrtoint ptr %out_dev to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %out_dev, align 4, !annotation !66
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %get_remote_ifindex = getelementptr inbounds %struct.mlx5e_tc_tunnel, ptr %call, i32 0, i32 9
  %2 = ptrtoint ptr %get_remote_ifindex to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %get_remote_ifindex, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %call3 = tail call i32 %3(ptr noundef %dev) #10
  %fl = getelementptr inbounds %struct.mlx5e_tc_tun_route_attr, ptr %attr, i32 0, i32 2
  %4 = ptrtoint ptr %fl to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call3, ptr %fl, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ipv6_stub to i32))
  %5 = load ptr, ptr @ipv6_stub, align 4
  %ipv6_dst_lookup_flow = getelementptr inbounds %struct.ipv6_stub, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %ipv6_dst_lookup_flow to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ipv6_dst_lookup_flow, align 4
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 127
  %8 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %nd_net.i, align 4
  %fl5 = getelementptr inbounds %struct.mlx5e_tc_tun_route_attr, ptr %attr, i32 0, i32 2
  %call6 = tail call ptr %7(ptr noundef %9, ptr noundef null, ptr noundef %fl5, ptr noundef null) #10
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %call6 to i32
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %ttl = getelementptr inbounds %struct.mlx5e_tc_tun_route_attr, ptr %attr, i32 0, i32 4
  %11 = ptrtoint ptr %ttl to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %ttl, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool11.not = icmp eq i8 %12, 0
  br i1 %tobool11.not, label %if.then12, label %if.end10.if.end15_crit_edge

if.end10.if.end15_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %call13 = tail call i32 @ip6_dst_hoplimit(ptr noundef %call6) #10
  %conv = trunc i32 %call13 to i8
  %13 = ptrtoint ptr %ttl to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv, ptr %ttl, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %if.end10.if.end15_crit_edge
  %14 = ptrtoint ptr %call6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %call6, align 4
  %call17 = call fastcc i32 @get_route_and_out_devs(ptr noundef %priv, ptr noundef %15, ptr noundef nonnull %route_dev, ptr noundef nonnull %out_dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp = icmp slt i32 %call17, 0
  br i1 %cmp, label %if.end15.err_dst_release_crit_edge, label %if.end20

if.end15.err_dst_release_crit_edge:               ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_dst_release

if.end20:                                         ; preds = %if.end15
  %16 = ptrtoint ptr %route_dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %route_dev, align 4
  %tobool.not.i = icmp eq ptr %17, null
  br i1 %tobool.not.i, label %if.end20.dev_hold.exit_crit_edge, label %do.body1.i

if.end20.dev_hold.exit_crit_edge:                 ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_hold.exit

do.body1.i:                                       ; preds = %if.end20
  %18 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !67
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %17, i32 0, i32 118
  %19 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pcpu_refcnt.i, align 4
  %21 = ptrtoint ptr %20 to i32
  %22 = tail call i32 @llvm.read_register.i32(metadata !56) #10
  %and.i.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %25
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %27, %21
  %28 = inttoptr i32 %add.i to ptr
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %28, align 4
  %add13.i = add i32 %30, 1
  store i32 %add13.i, ptr %28, align 4
  %31 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !68
  %and.i.i.i = and i32 %31, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.do.end30.i_crit_edge, !prof !69

do.body1.i.do.end30.i_crit_edge:                  ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end30.i

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @warn_bogus_irq_restore() #10
  br label %do.end30.i

do.end30.i:                                       ; preds = %if.then28.i, %do.body1.i.do.end30.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %18) #10, !srcloc !70
  br label %dev_hold.exit

dev_hold.exit:                                    ; preds = %do.end30.i, %if.end20.dev_hold.exit_crit_edge
  %daddr = getelementptr inbounds %struct.mlx5e_tc_tun_route_attr, ptr %attr, i32 0, i32 2, i32 0, i32 1
  %ops.i = getelementptr inbounds %struct.dst_entry, ptr %call6, i32 0, i32 1
  %32 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ops.i, align 4
  %neigh_lookup.i = getelementptr inbounds %struct.dst_ops, ptr %33, i32 0, i32 14
  %34 = ptrtoint ptr %neigh_lookup.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %neigh_lookup.i, align 8
  %call.i = tail call ptr %35(ptr noundef %call6, ptr noundef null, ptr noundef %daddr) #10
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  %tobool23.not65 = icmp eq ptr %call.i, null
  %tobool23.not = or i1 %cmp.i.i, %tobool23.not65
  br i1 %tobool23.not, label %if.then24, label %if.end25

if.then24:                                        ; preds = %dev_hold.exit
  br i1 %tobool.not.i, label %if.then24.err_dst_release_crit_edge, label %do.body1.i62

if.then24.err_dst_release_crit_edge:              ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_dst_release

do.body1.i62:                                     ; preds = %if.then24
  %36 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !67
  %pcpu_refcnt.i54 = getelementptr inbounds %struct.net_device, ptr %17, i32 0, i32 118
  %37 = ptrtoint ptr %pcpu_refcnt.i54 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pcpu_refcnt.i54, align 4
  %39 = ptrtoint ptr %38 to i32
  %40 = tail call i32 @llvm.read_register.i32(metadata !56) #10
  %and.i.i55 = and i32 %40, -16384
  %41 = inttoptr i32 %and.i.i55 to ptr
  %cpu.i56 = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 3
  %42 = ptrtoint ptr %cpu.i56 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %cpu.i56, align 4
  %arrayidx.i57 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %43
  %44 = ptrtoint ptr %arrayidx.i57 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx.i57, align 4
  %add.i58 = add i32 %45, %39
  %46 = inttoptr i32 %add.i58 to ptr
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %46, align 4
  %add13.i59 = add i32 %48, -1
  store i32 %add13.i59, ptr %46, align 4
  %49 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !68
  %and.i.i.i60 = and i32 %49, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i60)
  %tobool24.not.i61 = icmp eq i32 %and.i.i.i60, 0
  br i1 %tobool24.not.i61, label %if.then28.i63, label %do.body1.i62.do.end30.i64_crit_edge, !prof !69

do.body1.i62.do.end30.i64_crit_edge:              ; preds = %do.body1.i62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end30.i64

if.then28.i63:                                    ; preds = %do.body1.i62
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @warn_bogus_irq_restore() #10
  br label %do.end30.i64

do.end30.i64:                                     ; preds = %if.then28.i63, %do.body1.i62.do.end30.i64_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %36) #10, !srcloc !70
  br label %err_dst_release

if.end25:                                         ; preds = %dev_hold.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dst_release(ptr noundef %call6) #10
  %50 = ptrtoint ptr %out_dev to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %out_dev, align 4
  %52 = ptrtoint ptr %attr to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %51, ptr %attr, align 8
  %route_dev27 = getelementptr inbounds %struct.mlx5e_tc_tun_route_attr, ptr %attr, i32 0, i32 1
  %53 = ptrtoint ptr %route_dev27 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %17, ptr %route_dev27, align 4
  %n28 = getelementptr inbounds %struct.mlx5e_tc_tun_route_attr, ptr %attr, i32 0, i32 3
  %54 = ptrtoint ptr %n28 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call.i, ptr %n28, align 8
  br label %cleanup

err_dst_release:                                  ; preds = %do.end30.i64, %if.then24.err_dst_release_crit_edge, %if.end15.err_dst_release_crit_edge
  %ret.0 = phi i32 [ %call17, %if.end15.err_dst_release_crit_edge ], [ -12, %if.then24.err_dst_release_crit_edge ], [ -12, %do.end30.i64 ]
  tail call void @dst_release(ptr noundef %call6) #10
  br label %cleanup

cleanup:                                          ; preds = %err_dst_release, %if.end25, %if.then8
  %retval.0 = phi i32 [ %10, %if.then8 ], [ %ret.0, %err_dst_release ], [ 0, %if.end25 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out_dev) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %route_dev) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5e_tc_tun_update_header_ipv6(ptr noundef %priv, ptr noundef %mirred_dev, ptr noundef %e) local_unnamed_addr #1 align 64 {
entry:
  %reformat_params = alloca %struct.mlx5_pkt_reformat_params, align 4
  %attr = alloca %struct.mlx5e_tc_tun_route_attr, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mdev = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %0 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev, align 64
  %arrayidx = getelementptr %struct.mlx5_core_dev, ptr %1, i32 0, i32 8, i32 0, i32 9
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %add.ptr = getelementptr i32, ptr %3, i32 1
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr, align 4
  %and = and i32 %5, 1023
  %tun_info = getelementptr inbounds %struct.mlx5e_encap_entry, ptr %e, i32 0, i32 6
  %6 = ptrtoint ptr %tun_info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tun_info, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %reformat_params) #10
  %8 = call ptr @memset(ptr %reformat_params, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %attr) #10
  %9 = call ptr @memset(ptr %attr, i32 0, i32 104)
  %ttl = getelementptr inbounds %struct.ip_tunnel_key, ptr %7, i32 0, i32 4
  %10 = ptrtoint ptr %ttl to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %ttl, align 1
  %ttl1 = getelementptr inbounds %struct.mlx5e_tc_tun_route_attr, ptr %attr, i32 0, i32 4
  %12 = ptrtoint ptr %ttl1 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %ttl1, align 4
  %tos = getelementptr inbounds %struct.ip_tunnel_key, ptr %7, i32 0, i32 3
  %13 = ptrtoint ptr %tos to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %tos, align 2
  %15 = and i8 %14, 30
  %and2 = zext i8 %15 to i32
  %label = getelementptr inbounds %struct.ip_tunnel_key, ptr %7, i32 0, i32 5
  %16 = ptrtoint ptr %label to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %label, align 4
  %shl.i = shl nuw nsw i32 %and2, 20
  %or.i = or i32 %shl.i, %17
  %flowlabel = getelementptr inbounds %struct.mlx5e_tc_tun_route_attr, ptr %attr, i32 0, i32 2, i32 0, i32 3
  %18 = ptrtoint ptr %flowlabel to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %or.i, ptr %flowlabel, align 8
  %daddr = getelementptr inbounds %struct.mlx5e_tc_tun_route_attr, ptr %attr, i32 0, i32 2, i32 0, i32 1
  %u = getelementptr inbounds %struct.ip_tunnel_key, ptr %7, i32 0, i32 1
  %dst = getelementptr inbounds %struct.ip_tunnel_key, ptr %7, i32 0, i32 1, i32 0, i32 1
  %19 = call ptr @memcpy(ptr %daddr, ptr %dst, i32 16)
  %saddr = getelementptr inbounds %struct.mlx5e_tc_tun_route_attr, ptr %attr, i32 0, i32 2, i32 0, i32 2
  %20 = call ptr @memcpy(ptr %saddr, ptr %u, i32 16)
  %call6 = call fastcc i32 @mlx5e_route_lookup_ipv6_get(ptr noundef %priv, ptr noundef %mirred_dev, ptr noundef nonnull %attr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %route_dev = getelementptr inbounds %struct.mlx5e_tc_tun_route_attr, ptr %attr, i32 0, i32 1
  %21 = ptrtoint ptr %route_dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %route_dev, align 4
  %priv_flags.i = getelementptr inbounds %struct.net_device, ptr %22, i32 0, i32 15
  %23 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %priv_flags.i, align 16
  %and.i = and i64 %24, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  %add = select i1 %tobool.i.not, i32 54, i32 58
  %tunnel = getelementptr inbounds %struct.mlx5e_encap_entry, ptr %e, i32 0, i32 11
  %25 = ptrtoint ptr %tunnel to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %tunnel, align 4
  %calc_hlen = getelementptr inbounds %struct.mlx5e_tc_tunnel, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %calc_hlen to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %calc_hlen, align 4
  %call9 = call i32 %28(ptr noundef %e) #10
  %add10 = add i32 %add, %call9
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %add10)
  %cmp = icmp slt i32 %and, %add10
  br i1 %cmp, label %do.end, label %if.end8.i.i

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %29 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %mdev, align 64
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 8
  %33 = call i32 @llvm.read_register.i32(metadata !56) #10
  %and.i123 = and i32 %33, -16384
  %34 = inttoptr i32 %and.i123 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %36, i32 0, i32 68
  %37 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %pid, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %32, ptr noundef nonnull @.str, ptr noundef nonnull @.str.7, i32 noundef 638, i32 noundef %38, i32 noundef %add10, i32 noundef %and) #14
  br label %cleanup.sink.split

if.end8.i.i:                                      ; preds = %if.end
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add10, i32 noundef 3520) #15
  %tobool17.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool17.not, label %if.end8.i.i.cleanup.sink.split_crit_edge, label %if.end19

if.end8.i.i.cleanup.sink.split_crit_edge:         ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end19:                                         ; preds = %if.end8.i.i
  %39 = ptrtoint ptr %route_dev to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %route_dev, align 4
  %ifindex = getelementptr inbounds %struct.net_device, ptr %40, i32 0, i32 17
  %41 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %ifindex, align 4
  %route_dev_ifindex = getelementptr inbounds %struct.mlx5e_encap_entry, ptr %e, i32 0, i32 10
  %43 = ptrtoint ptr %route_dev_ifindex to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %route_dev_ifindex, align 4
  %n = getelementptr inbounds %struct.mlx5e_tc_tun_route_attr, ptr %attr, i32 0, i32 3
  %44 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %n, align 8
  %lock = getelementptr inbounds %struct.neighbour, ptr %45, i32 0, i32 5
  call void @_raw_read_lock_bh(ptr noundef %lock) #10
  %46 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %n, align 8
  %nud_state22 = getelementptr inbounds %struct.neighbour, ptr %47, i32 0, i32 12
  %48 = ptrtoint ptr %nud_state22 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %nud_state22, align 8
  %h_dest = getelementptr inbounds %struct.mlx5e_encap_entry, ptr %e, i32 0, i32 8
  %ha = getelementptr inbounds %struct.neighbour, ptr %47, i32 0, i32 18
  %50 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %ha, align 4
  %52 = ptrtoint ptr %h_dest to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %h_dest, align 4
  %add.ptr.i = getelementptr %struct.neighbour, ptr %47, i32 0, i32 18, i32 4
  %53 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr %struct.mlx5e_encap_entry, ptr %e, i32 0, i32 8, i32 4
  %55 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %54, ptr %add.ptr1.i, align 2
  %dev = getelementptr inbounds %struct.neighbour, ptr %47, i32 0, i32 25
  %56 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev, align 4
  %58 = ptrtoint ptr %e to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %e, align 4
  %neigh_dev = getelementptr inbounds %struct.mlx5e_neigh_hash_entry, ptr %59, i32 0, i32 3
  %60 = ptrtoint ptr %neigh_dev to i32
  call void @__asan_store4_noabort(i32 %60)
  store volatile ptr %57, ptr %neigh_dev, align 4
  %61 = load ptr, ptr %n, align 8
  %lock37 = getelementptr inbounds %struct.neighbour, ptr %61, i32 0, i32 5
  call void @_raw_read_unlock_bh(ptr noundef %lock37) #10
  %62 = ptrtoint ptr %route_dev to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %route_dev, align 4
  %64 = ptrtoint ptr %h_dest to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %h_dest, align 4
  %66 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %call9.i.i, align 128
  %67 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %add.ptr1.i, align 2
  %add.ptr1.i.i = getelementptr i8, ptr %call9.i.i, i32 4
  %69 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 %68, ptr %add.ptr1.i.i, align 4
  %h_source.i = getelementptr inbounds %struct.ethhdr, ptr %call9.i.i, i32 0, i32 1
  %dev_addr.i = getelementptr inbounds %struct.net_device, ptr %63, i32 0, i32 86
  %70 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dev_addr.i, align 64
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %71, align 4
  %74 = ptrtoint ptr %h_source.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %h_source.i, align 4
  %add.ptr.i20.i = getelementptr i8, ptr %71, i32 4
  %75 = ptrtoint ptr %add.ptr.i20.i to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %add.ptr.i20.i, align 2
  %add.ptr1.i21.i = getelementptr %struct.ethhdr, ptr %call9.i.i, i32 0, i32 1, i32 4
  %77 = ptrtoint ptr %add.ptr1.i21.i to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 %76, ptr %add.ptr1.i21.i, align 2
  %priv_flags.i.i = getelementptr inbounds %struct.net_device, ptr %63, i32 0, i32 15
  %78 = ptrtoint ptr %priv_flags.i.i to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %priv_flags.i.i, align 16
  %and.i.i = and i64 %79, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i124 = getelementptr i8, ptr %call9.i.i, i32 14
  %add.ptr4.i = getelementptr i8, ptr %call9.i.i, i32 18
  %call5.i = call zeroext i16 @vlan_dev_vlan_proto(ptr noundef %63) #10
  %h_proto.i = getelementptr inbounds %struct.ethhdr, ptr %call9.i.i, i32 0, i32 2
  %80 = ptrtoint ptr %h_proto.i to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 %call5.i, ptr %h_proto.i, align 4
  %call6.i = call zeroext i16 @vlan_dev_vlan_id(ptr noundef %63) #10
  %81 = ptrtoint ptr %add.ptr.i124 to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 %call6.i, ptr %add.ptr.i124, align 2
  %h_vlan_encapsulated_proto.i = getelementptr i8, ptr %call9.i.i, i32 16
  %82 = ptrtoint ptr %h_vlan_encapsulated_proto.i to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 -31011, ptr %h_vlan_encapsulated_proto.i, align 16
  br label %gen_eth_tnl_hdr.exit

if.else.i:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  %h_proto7.i = getelementptr inbounds %struct.ethhdr, ptr %call9.i.i, i32 0, i32 2
  %83 = ptrtoint ptr %h_proto7.i to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 -31011, ptr %h_proto7.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %call9.i.i, i32 14
  br label %gen_eth_tnl_hdr.exit

gen_eth_tnl_hdr.exit:                             ; preds = %if.else.i, %if.then.i
  %ip.0.i = phi ptr [ %add.ptr4.i, %if.then.i ], [ %add.ptr8.i, %if.else.i ]
  %84 = ptrtoint ptr %tos to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %tos, align 2
  %conv41 = zext i8 %85 to i32
  %shl.i125 = shl nuw nsw i32 %conv41, 20
  %or.i126 = or i32 %shl.i125, 1610612736
  %86 = ptrtoint ptr %ip.0.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %or.i126, ptr %ip.0.i, align 4
  %87 = ptrtoint ptr %ttl1 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %ttl1, align 4
  %hop_limit = getelementptr inbounds %struct.ipv6hdr, ptr %ip.0.i, i32 0, i32 4
  %89 = ptrtoint ptr %hop_limit to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %88, ptr %hop_limit, align 1
  %daddr43 = getelementptr inbounds %struct.ipv6hdr, ptr %ip.0.i, i32 0, i32 6
  %90 = call ptr @memcpy(ptr %daddr43, ptr %daddr, i32 16)
  %saddr46 = getelementptr inbounds %struct.ipv6hdr, ptr %ip.0.i, i32 0, i32 5
  %91 = call ptr @memcpy(ptr %saddr46, ptr %saddr, i32 16)
  %92 = ptrtoint ptr %tunnel to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %tunnel, align 4
  %tobool.not.i = icmp eq ptr %93, null
  br i1 %tobool.not.i, label %mlx5e_gen_ip_tunnel_header.exit.thread, label %mlx5e_gen_ip_tunnel_header.exit

mlx5e_gen_ip_tunnel_header.exit.thread:           ; preds = %gen_eth_tnl_hdr.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #14
  br label %free_encap

mlx5e_gen_ip_tunnel_header.exit:                  ; preds = %gen_eth_tnl_hdr.exit
  %nexthdr = getelementptr inbounds %struct.ipv6hdr, ptr %ip.0.i, i32 0, i32 3
  %add.ptr49 = getelementptr i8, ptr %ip.0.i, i32 40
  %generate_ip_tun_hdr.i = getelementptr inbounds %struct.mlx5e_tc_tunnel, ptr %93, i32 0, i32 5
  %94 = ptrtoint ptr %generate_ip_tun_hdr.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %generate_ip_tun_hdr.i, align 4
  %call2.i = call i32 %95(ptr noundef %add.ptr49, ptr noundef %nexthdr, ptr noundef %e) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool51.not = icmp eq i32 %call2.i, 0
  br i1 %tobool51.not, label %if.end53, label %mlx5e_gen_ip_tunnel_header.exit.free_encap_crit_edge

mlx5e_gen_ip_tunnel_header.exit.free_encap_crit_edge: ; preds = %mlx5e_gen_ip_tunnel_header.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_encap

if.end53:                                         ; preds = %mlx5e_gen_ip_tunnel_header.exit
  %encap_size = getelementptr inbounds %struct.mlx5e_encap_entry, ptr %e, i32 0, i32 15
  %96 = ptrtoint ptr %encap_size to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %add10, ptr %encap_size, align 4
  %encap_header54 = getelementptr inbounds %struct.mlx5e_encap_entry, ptr %e, i32 0, i32 14
  %97 = ptrtoint ptr %encap_header54 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %encap_header54, align 4
  call void @kfree(ptr noundef %98) #10
  %99 = ptrtoint ptr %encap_header54 to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %call9.i.i, ptr %encap_header54, align 4
  %100 = and i8 %49, -34
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %100)
  %tobool58.not = icmp eq i8 %100, 0
  br i1 %tobool58.not, label %if.then59, label %if.end62

if.then59:                                        ; preds = %if.end53
  %101 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %n, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %103 = load volatile i32, ptr @jiffies, align 128
  %used.i.i = getelementptr inbounds %struct.neighbour, ptr %102, i32 0, i32 10
  %104 = ptrtoint ptr %used.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load volatile i32, ptr %used.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %105, i32 %103)
  %cmp.not.i.i = icmp eq i32 %105, %103
  br i1 %cmp.not.i.i, label %if.then59.if.end.i.i127_crit_edge, label %do.body5.i.i

if.then59.if.end.i.i127_crit_edge:                ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i127

do.body5.i.i:                                     ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #12
  %106 = ptrtoint ptr %used.i.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store volatile i32 %103, ptr %used.i.i, align 8
  br label %if.end.i.i127

if.end.i.i127:                                    ; preds = %do.body5.i.i, %if.then59.if.end.i.i127_crit_edge
  %nud_state.i.i = getelementptr inbounds %struct.neighbour, ptr %102, i32 0, i32 12
  %107 = ptrtoint ptr %nud_state.i.i to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %nud_state.i.i, align 8
  %109 = and i8 %108, -38
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %109)
  %tobool.not.i.i = icmp eq i8 %109, 0
  br i1 %tobool.not.i.i, label %if.then11.i.i, label %if.end.i.i127.cleanup.sink.split_crit_edge

if.end.i.i127.cleanup.sink.split_crit_edge:       ; preds = %if.end.i.i127
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.then11.i.i:                                    ; preds = %if.end.i.i127
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i = call i32 @__neigh_event_send(ptr noundef %102, ptr noundef null, i1 noundef zeroext true) #10
  br label %cleanup.sink.split

if.end62:                                         ; preds = %if.end53
  %110 = getelementptr inbounds i8, ptr %reformat_params, i32 4
  %111 = ptrtoint ptr %110 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 0, ptr %110, align 4
  %reformat_type = getelementptr inbounds %struct.mlx5e_encap_entry, ptr %e, i32 0, i32 12
  %112 = ptrtoint ptr %reformat_type to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %reformat_type, align 4
  %114 = ptrtoint ptr %reformat_params to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %113, ptr %reformat_params, align 4
  %size = getelementptr inbounds %struct.mlx5_pkt_reformat_params, ptr %reformat_params, i32 0, i32 3
  %115 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %add10, ptr %size, align 4
  %data = getelementptr inbounds %struct.mlx5_pkt_reformat_params, ptr %reformat_params, i32 0, i32 4
  %116 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %call9.i.i, ptr %data, align 4
  %117 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %mdev, align 64
  %call64 = call ptr @mlx5_packet_reformat_alloc(ptr noundef %118, ptr noundef nonnull %reformat_params, i32 noundef 8) #10
  %pkt_reformat = getelementptr inbounds %struct.mlx5e_encap_entry, ptr %e, i32 0, i32 5
  %119 = ptrtoint ptr %pkt_reformat to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %call64, ptr %pkt_reformat, align 4
  %cmp.i = icmp ugt ptr %call64, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then67, label %if.end70

if.then67:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #12
  %120 = ptrtoint ptr %call64 to i32
  br label %free_encap

if.end70:                                         ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #12
  %flags = getelementptr inbounds %struct.mlx5e_encap_entry, ptr %e, i32 0, i32 13
  %121 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %flags, align 4
  %123 = or i8 %122, 1
  store i8 %123, ptr %flags, align 4
  %124 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %attr, align 8
  %add.ptr.i128 = getelementptr i8, ptr %125, i32 2304
  call void @mlx5e_rep_queue_neigh_stats_work(ptr noundef %add.ptr.i128) #10
  br label %cleanup.sink.split

free_encap:                                       ; preds = %if.then67, %mlx5e_gen_ip_tunnel_header.exit.free_encap_crit_edge, %mlx5e_gen_ip_tunnel_header.exit.thread
  %err.0 = phi i32 [ %call2.i, %mlx5e_gen_ip_tunnel_header.exit.free_encap_crit_edge ], [ %120, %if.then67 ], [ -95, %mlx5e_gen_ip_tunnel_header.exit.thread ]
  call void @kfree(ptr noundef nonnull %call9.i.i) #10
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %free_encap, %if.end70, %if.then11.i.i, %if.end.i.i127.cleanup.sink.split_crit_edge, %if.end8.i.i.cleanup.sink.split_crit_edge, %do.end
  %retval.0.ph = phi i32 [ 0, %if.end70 ], [ -95, %do.end ], [ %err.0, %free_encap ], [ -12, %if.end8.i.i.cleanup.sink.split_crit_edge ], [ 0, %if.end.i.i127.cleanup.sink.split_crit_edge ], [ 0, %if.then11.i.i ]
  call fastcc void @mlx5e_tc_tun_route_attr_cleanup(ptr noundef nonnull %attr) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %attr) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %reformat_params) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5e_tc_tun_route_lookup(ptr noundef %priv, ptr nocapture noundef readonly %spec, ptr nocapture noundef %flow_attr, ptr noundef %filter_dev) local_unnamed_addr #1 align 64 {
entry:
  %attr = alloca %struct.mlx5e_tc_tun_route_attr, align 8
  %vport_num = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %attr) #10
  %0 = call ptr @memset(ptr %attr, i32 0, i32 104)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %vport_num) #10
  %1 = ptrtoint ptr %vport_num to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -1, ptr %vport_num, align 2, !annotation !66
  %tun_ip_version = getelementptr inbounds %struct.mlx5_flow_attr, ptr %flow_attr, i32 0, i32 14
  %2 = ptrtoint ptr %tun_ip_version to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %tun_ip_version, align 1
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i8 %3, label %entry.cleanup_crit_edge [
    i8 4, label %if.then
    i8 6, label %if.then8
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %rx_tun_attr = getelementptr inbounds %struct.mlx5_flow_attr, ptr %flow_attr, i32 13, i32 7
  %5 = ptrtoint ptr %rx_tun_attr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rx_tun_attr, align 4
  %dst_ip = getelementptr inbounds %struct.mlx5_rx_tun_attr, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %dst_ip to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dst_ip, align 4
  %saddr = getelementptr inbounds %struct.mlx5e_tc_tun_route_attr, ptr %attr, i32 0, i32 2, i32 0, i32 1
  %9 = ptrtoint ptr %saddr to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %saddr, align 8
  %src_ip = getelementptr inbounds %struct.mlx5_rx_tun_attr, ptr %6, i32 0, i32 1
  %10 = ptrtoint ptr %src_ip to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %src_ip, align 4
  %daddr = getelementptr inbounds %struct.mlx5e_tc_tun_route_attr, ptr %attr, i32 0, i32 2, i32 0, i32 1, i32 0, i32 0, i32 1
  %12 = ptrtoint ptr %daddr to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %daddr, align 4
  %call = call fastcc i32 @mlx5e_route_lookup_ipv4_get(ptr noundef %priv, ptr noundef %filter_dev, ptr noundef nonnull %attr)
  br label %if.end19

if.then8:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %saddr10 = getelementptr inbounds %struct.mlx5e_tc_tun_route_attr, ptr %attr, i32 0, i32 2, i32 0, i32 2
  %rx_tun_attr11 = getelementptr inbounds %struct.mlx5_flow_attr, ptr %flow_attr, i32 13, i32 7
  %13 = ptrtoint ptr %rx_tun_attr11 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rx_tun_attr11, align 4
  %dst_ip12 = getelementptr inbounds %struct.mlx5_rx_tun_attr, ptr %14, i32 0, i32 2
  %15 = call ptr @memcpy(ptr %saddr10, ptr %dst_ip12, i32 16)
  %daddr14 = getelementptr inbounds %struct.mlx5e_tc_tun_route_attr, ptr %attr, i32 0, i32 2, i32 0, i32 1
  %src_ip16 = getelementptr inbounds %struct.mlx5_rx_tun_attr, ptr %14, i32 0, i32 1
  %16 = call ptr @memcpy(ptr %daddr14, ptr %src_ip16, i32 16)
  %call17 = call fastcc i32 @mlx5e_route_lookup_ipv6_get(ptr noundef %priv, ptr noundef %filter_dev, ptr noundef nonnull %attr)
  br label %if.end19

if.end19:                                         ; preds = %if.then8, %if.then
  %err.0 = phi i32 [ %call, %if.then ], [ %call17, %if.then8 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool.not = icmp eq i32 %err.0, 0
  br i1 %tobool.not, label %if.end21, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end21:                                         ; preds = %if.end19
  %route_dev = getelementptr inbounds %struct.mlx5e_tc_tun_route_attr, ptr %attr, i32 0, i32 1
  %17 = ptrtoint ptr %route_dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %route_dev, align 4
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %18, i32 0, i32 16
  %19 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %netdev_ops, align 8
  %cmp22 = icmp eq ptr %20, @mlx5e_netdev_ops
  br i1 %cmp22, label %land.lhs.true, label %if.end21.if.else37_crit_edge

if.end21.if.else37_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else37

land.lhs.true:                                    ; preds = %if.end21
  %21 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %attr, align 8
  %call25 = call zeroext i1 @mlx5e_tc_is_vf_tunnel(ptr noundef %22, ptr noundef %18) #10
  br i1 %call25, label %if.then27, label %land.lhs.true.if.else37_crit_edge

land.lhs.true.if.else37_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else37

if.then27:                                        ; preds = %land.lhs.true
  %23 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %attr, align 8
  %25 = ptrtoint ptr %route_dev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %route_dev, align 4
  %call30 = call i32 @mlx5e_tc_query_route_vport(ptr noundef %24, ptr noundef %26, ptr noundef nonnull %vport_num) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end33, label %if.then27.out_crit_edge

if.then27.out_crit_edge:                          ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end33:                                         ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr = getelementptr %struct.mlx5_flow_spec, ptr %spec, i32 0, i32 2, i32 21
  %27 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %add.ptr, align 4
  %shr = lshr i32 %28, 8
  %rx_tun_attr35 = getelementptr inbounds %struct.mlx5_flow_attr, ptr %flow_attr, i32 13, i32 7
  %29 = ptrtoint ptr %rx_tun_attr35 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %rx_tun_attr35, align 4
  %vni = getelementptr inbounds %struct.mlx5_rx_tun_attr, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %vni to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %shr, ptr %vni, align 4
  %32 = ptrtoint ptr %vport_num to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %vport_num, align 2
  %34 = load ptr, ptr %rx_tun_attr35, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %33, ptr %34, align 4
  br label %out

if.else37:                                        ; preds = %land.lhs.true.if.else37_crit_edge, %if.end21.if.else37_crit_edge
  %36 = ptrtoint ptr %route_dev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %route_dev, align 4
  %priv_flags.i = getelementptr inbounds %struct.net_device, ptr %37, i32 0, i32 15
  %38 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %priv_flags.i, align 16
  %and.i = and i64 %39, 1048576
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %if.else37.out_crit_edge, label %if.then40

if.else37.out_crit_edge:                          ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then40:                                        ; preds = %if.else37
  %call41 = call ptr @mlx5e_get_int_port_priv(ptr noundef %priv) #10
  %40 = ptrtoint ptr %route_dev to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %route_dev, align 4
  %ifindex = getelementptr inbounds %struct.net_device, ptr %41, i32 0, i32 17
  %42 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %ifindex, align 4
  %call43 = call ptr @mlx5e_tc_int_port_get(ptr noundef %call41, i32 noundef %43, i32 noundef 0) #10
  %cmp.i = icmp ugt ptr %call43, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then45, label %if.end47

if.then45:                                        ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #12
  %44 = ptrtoint ptr %call43 to i32
  br label %out

if.end47:                                         ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #12
  %int_port48 = getelementptr inbounds %struct.mlx5_flow_attr, ptr %flow_attr, i32 1, i32 3, i32 2
  %45 = ptrtoint ptr %int_port48 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call43, ptr %int_port48, align 4
  br label %out

out:                                              ; preds = %if.end47, %if.then45, %if.else37.out_crit_edge, %if.end33, %if.then27.out_crit_edge
  %err.1 = phi i32 [ %call30, %if.then27.out_crit_edge ], [ 0, %if.end33 ], [ %44, %if.then45 ], [ 0, %if.end47 ], [ 0, %if.else37.out_crit_edge ]
  %46 = ptrtoint ptr %tun_ip_version to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %tun_ip_version, align 1
  %48 = zext i8 %47 to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values.23)
  switch i8 %47, label %out.cleanup_crit_edge [
    i8 4, label %out.cleanup.sink.split_crit_edge
    i8 6, label %out.cleanup.sink.split_crit_edge86
  ]

out.cleanup.sink.split_crit_edge86:               ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

out.cleanup.sink.split_crit_edge:                 ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup.sink.split:                               ; preds = %out.cleanup.sink.split_crit_edge, %out.cleanup.sink.split_crit_edge86
  call fastcc void @mlx5e_tc_tun_route_attr_cleanup(ptr noundef nonnull %attr) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %out.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %err.0, %if.end19.cleanup_crit_edge ], [ %err.1, %out.cleanup_crit_edge ], [ %err.1, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %vport_num) #10
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %attr) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mlx5e_tc_is_vf_tunnel(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_tc_query_route_vport(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5e_tc_int_port_get(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5e_get_int_port_priv(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @mlx5e_tc_tun_device_to_offload(ptr noundef %priv, ptr nocapture noundef readonly %netdev) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @mlx5e_get_tc_tun(ptr noundef %netdev)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.else_crit_edge, label %land.lhs.true

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %can_offload = getelementptr inbounds %struct.mlx5e_tc_tunnel, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %can_offload to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %can_offload, align 4
  %call1 = tail call zeroext i1 %1(ptr noundef %priv) #10
  br i1 %call1, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.else, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %if.else ], [ true, %land.lhs.true.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5e_tc_tun_init_encap_attr(ptr noundef %tunnel_dev, ptr noundef %priv, ptr noundef %e, ptr noundef %extack) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @mlx5e_get_tc_tun(ptr noundef %tunnel_dev)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %reformat_type = getelementptr inbounds %struct.mlx5e_encap_entry, ptr %e, i32 0, i32 12
  %0 = ptrtoint ptr %reformat_type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reformat_type, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %init_encap_attr = getelementptr inbounds %struct.mlx5e_tc_tunnel, ptr %call, i32 0, i32 4
  %1 = ptrtoint ptr %init_encap_attr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %init_encap_attr, align 4
  %call1 = tail call i32 %2(ptr noundef %tunnel_dev, ptr noundef %priv, ptr noundef %e, ptr noundef %extack) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call1, %if.end ], [ -95, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5e_tc_tun_parse(ptr nocapture noundef readonly %filter_dev, ptr noundef %priv, ptr noundef %spec, ptr noundef %f, ptr nocapture noundef writeonly %match_level) local_unnamed_addr #1 align 64 {
entry:
  %key_basic = alloca %struct.flow_dissector_key_basic, align 4
  %mask_basic = alloca %struct.flow_dissector_key_basic, align 4
  %match_basic = alloca %struct.flow_match_basic, align 4
  %match = alloca %struct.flow_match_control, align 4
  %match30 = alloca %struct.flow_match_ipv4_addrs, align 4
  %match86 = alloca %struct.flow_match_ipv6_addrs, align 4
  %match106 = alloca %struct.flow_match_ip, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @mlx5e_get_tc_tun(ptr noundef %filter_dev)
  %rule.i = getelementptr inbounds %struct.flow_cls_offload, ptr %f, i32 0, i32 3
  %0 = ptrtoint ptr %rule.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rule.i, align 8
  %match_criteria = getelementptr inbounds %struct.mlx5_flow_spec, ptr %spec, i32 0, i32 1
  %match_value = getelementptr inbounds %struct.mlx5_flow_spec, ptr %spec, i32 0, i32 2
  %extack4 = getelementptr inbounds %struct.flow_cls_common_offload, ptr %f, i32 0, i32 3
  %2 = ptrtoint ptr %extack4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %extack4, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %netdev = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 22
  %4 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %netdev, align 4
  %rtnl_link_ops.i = getelementptr inbounds %struct.net_device, ptr %filter_dev, i32 0, i32 136
  %6 = ptrtoint ptr %rtnl_link_ops.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rtnl_link_ops.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.then.mlx5e_netdev_kind.exit_crit_edge, label %if.then.i

if.then.mlx5e_netdev_kind.exit_crit_edge:         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx5e_netdev_kind.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %kind.i = getelementptr inbounds %struct.rtnl_link_ops, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %kind.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %kind.i, align 4
  br label %mlx5e_netdev_kind.exit

mlx5e_netdev_kind.exit:                           ; preds = %if.then.i, %if.then.mlx5e_netdev_kind.exit_crit_edge
  %retval.0.i = phi ptr [ %9, %if.then.i ], [ @.str.22, %if.then.mlx5e_netdev_kind.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %5, ptr noundef nonnull @.str.8, ptr noundef %retval.0.i) #14
  br label %cleanup249

if.end:                                           ; preds = %entry
  %match_level6 = getelementptr inbounds %struct.mlx5e_tc_tunnel, ptr %call, i32 0, i32 1
  %10 = ptrtoint ptr %match_level6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %match_level6, align 4
  %conv = trunc i32 %11 to i8
  %12 = ptrtoint ptr %match_level to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv, ptr %match_level, align 1
  %parse_udp_ports = getelementptr inbounds %struct.mlx5e_tc_tunnel, ptr %call, i32 0, i32 6
  %13 = ptrtoint ptr %parse_udp_ports to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %parse_udp_ports, align 4
  %tobool7.not = icmp eq ptr %14, null
  br i1 %tobool7.not, label %if.end.if.end14_crit_edge, label %if.then8

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.then8:                                         ; preds = %if.end
  %call10 = tail call i32 %14(ptr noundef %priv, ptr noundef %spec, ptr noundef %f, ptr noundef %match_criteria, ptr noundef %match_value) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then8.if.end14_crit_edge, label %if.then8.cleanup249_crit_edge

if.then8.cleanup249_crit_edge:                    ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup249

if.then8.if.end14_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.end14:                                         ; preds = %if.then8.if.end14_crit_edge, %if.end.if.end14_crit_edge
  %parse_tunnel = getelementptr inbounds %struct.mlx5e_tc_tunnel, ptr %call, i32 0, i32 7
  %15 = ptrtoint ptr %parse_tunnel to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %parse_tunnel, align 4
  %tobool15.not = icmp eq ptr %16, null
  br i1 %tobool15.not, label %if.end14.if.end22_crit_edge, label %if.then16

if.end14.if.end22_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

if.then16:                                        ; preds = %if.end14
  %call18 = tail call i32 %16(ptr noundef %priv, ptr noundef %spec, ptr noundef %f, ptr noundef %match_criteria, ptr noundef %match_value) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.then16.if.end22_crit_edge, label %if.then16.cleanup249_crit_edge

if.then16.cleanup249_crit_edge:                   ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup249

if.then16.if.end22_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

if.end22:                                         ; preds = %if.then16.if.end22_crit_edge, %if.end14.if.end22_crit_edge
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 8
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 4
  %and.i.i = and i32 %20, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.i.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.i.not, label %if.end22.if.end103_crit_edge, label %if.then24

if.end22.if.end103_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end103

if.then24:                                        ; preds = %if.end22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %key_basic) #10
  %21 = ptrtoint ptr %key_basic to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %key_basic, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask_basic) #10
  %22 = ptrtoint ptr %mask_basic to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -65536, ptr %mask_basic, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match_basic) #10
  %23 = getelementptr inbounds %struct.flow_match_basic, ptr %match_basic, i32 0, i32 1
  %24 = ptrtoint ptr %match_basic to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %key_basic, ptr %match_basic, align 4
  %25 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %mask_basic, ptr %23, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match) #10
  %26 = ptrtoint ptr %match to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr inttoptr (i32 -1 to ptr), ptr %match, align 4, !annotation !66
  %27 = getelementptr inbounds %struct.flow_match_control, ptr %match, i32 0, i32 1
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr inttoptr (i32 -1 to ptr), ptr %27, align 4, !annotation !66
  call void @flow_rule_match_enc_control(ptr noundef %1, ptr noundef nonnull %match) #10
  %29 = ptrtoint ptr %match to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %match, align 4
  %addr_type26 = getelementptr inbounds %struct.flow_dissector_key_control, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %addr_type26 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %addr_type26, align 2
  %33 = zext i16 %32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.24)
  switch i16 %32, label %if.then24.if.end102_crit_edge [
    i16 2, label %if.then29
    i16 3, label %if.then85
  ]

if.then24.if.end102_crit_edge:                    ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end102

if.then29:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match30) #10
  %34 = ptrtoint ptr %match30 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr inttoptr (i32 -1 to ptr), ptr %match30, align 4, !annotation !66
  %35 = getelementptr inbounds %struct.flow_match_ipv4_addrs, ptr %match30, i32 0, i32 1
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr inttoptr (i32 -1 to ptr), ptr %35, align 4, !annotation !66
  call void @flow_rule_match_enc_ipv4_addrs(ptr noundef %1, ptr noundef nonnull %match30) #10
  %37 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %35, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %38, align 4
  %add.ptr33 = getelementptr %struct.mlx5_flow_spec, ptr %spec, i32 0, i32 1, i32 11
  %41 = ptrtoint ptr %add.ptr33 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %add.ptr33, align 4
  %42 = ptrtoint ptr %match30 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %match30, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %43, align 4
  %add.ptr45 = getelementptr %struct.mlx5_flow_spec, ptr %spec, i32 0, i32 2, i32 11
  %46 = ptrtoint ptr %add.ptr45 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %add.ptr45, align 4
  %dst = getelementptr inbounds %struct.flow_dissector_key_ipv4_addrs, ptr %38, i32 0, i32 1
  %47 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %dst, align 4
  %add.ptr59 = getelementptr %struct.mlx5_flow_spec, ptr %spec, i32 0, i32 1, i32 15
  %49 = ptrtoint ptr %add.ptr59 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %add.ptr59, align 4
  %dst70 = getelementptr inbounds %struct.flow_dissector_key_ipv4_addrs, ptr %43, i32 0, i32 1
  %50 = ptrtoint ptr %dst70 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %dst70, align 4
  %add.ptr74 = getelementptr %struct.mlx5_flow_spec, ptr %spec, i32 0, i32 2, i32 15
  %52 = ptrtoint ptr %add.ptr74 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %add.ptr74, align 4
  %53 = ptrtoint ptr %key_basic to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 2048, ptr %key_basic, align 4
  %mdev = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %54 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %mdev, align 64
  call void @mlx5e_tc_set_ethertype(ptr noundef %55, ptr noundef nonnull %match_basic, i1 noundef zeroext true, ptr noundef %match_criteria, ptr noundef %match_value) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match30) #10
  br label %if.end102

if.then85:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match86) #10
  %56 = ptrtoint ptr %match86 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr inttoptr (i32 -1 to ptr), ptr %match86, align 4, !annotation !66
  %57 = getelementptr inbounds %struct.flow_match_ipv6_addrs, ptr %match86, i32 0, i32 1
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr inttoptr (i32 -1 to ptr), ptr %57, align 4, !annotation !66
  call void @flow_rule_match_enc_ipv6_addrs(ptr noundef %1, ptr noundef nonnull %match86) #10
  %add.ptr87 = getelementptr %struct.mlx5_flow_spec, ptr %spec, i32 0, i32 1, i32 8
  %59 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %57, align 4
  %61 = call ptr @memcpy(ptr %add.ptr87, ptr %60, i32 16)
  %add.ptr90 = getelementptr %struct.mlx5_flow_spec, ptr %spec, i32 0, i32 2, i32 8
  %62 = ptrtoint ptr %match86 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %match86, align 4
  %64 = call ptr @memcpy(ptr %add.ptr90, ptr %63, i32 16)
  %add.ptr93 = getelementptr %struct.mlx5_flow_spec, ptr %spec, i32 0, i32 1, i32 12
  %dst95 = getelementptr inbounds %struct.flow_dissector_key_ipv6_addrs, ptr %60, i32 0, i32 1
  %65 = call ptr @memcpy(ptr %add.ptr93, ptr %dst95, i32 16)
  %add.ptr96 = getelementptr %struct.mlx5_flow_spec, ptr %spec, i32 0, i32 2, i32 12
  %dst98 = getelementptr inbounds %struct.flow_dissector_key_ipv6_addrs, ptr %63, i32 0, i32 1
  %66 = call ptr @memcpy(ptr %add.ptr96, ptr %dst98, i32 16)
  %67 = ptrtoint ptr %key_basic to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 -31011, ptr %key_basic, align 4
  %mdev100 = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %68 = ptrtoint ptr %mdev100 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %mdev100, align 64
  call void @mlx5e_tc_set_ethertype(ptr noundef %69, ptr noundef nonnull %match_basic, i1 noundef zeroext true, ptr noundef %match_criteria, ptr noundef %match_value) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match86) #10
  br label %if.end102

if.end102:                                        ; preds = %if.then85, %if.then29, %if.then24.if.end102_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match_basic) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask_basic) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %key_basic) #10
  br label %if.end103

if.end103:                                        ; preds = %if.end102, %if.end22.if.end103_crit_edge
  %70 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %1, align 8
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %71, align 4
  %and.i.i318 = and i32 %73, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i318)
  %tobool.i.i319.not = icmp eq i32 %and.i.i318, 0
  br i1 %tobool.i.i319.not, label %if.end103.do.body223_crit_edge, label %if.then105

if.end103.do.body223_crit_edge:                   ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body223

if.then105:                                       ; preds = %if.end103
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match106) #10
  %74 = ptrtoint ptr %match106 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr inttoptr (i32 -1 to ptr), ptr %match106, align 4, !annotation !66
  %75 = getelementptr inbounds %struct.flow_match_ip, ptr %match106, i32 0, i32 1
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr inttoptr (i32 -1 to ptr), ptr %75, align 4, !annotation !66
  call void @flow_rule_match_enc_ip(ptr noundef %1, ptr noundef nonnull %match106) #10
  %77 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %75, align 4
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %78, align 1
  %81 = and i8 %80, 3
  %and111 = zext i8 %81 to i32
  %add.ptr115 = getelementptr %struct.mlx5_flow_spec, ptr %spec, i32 0, i32 1, i32 4
  %82 = ptrtoint ptr %add.ptr115 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %add.ptr115, align 4
  %and116 = and i32 %83, -196609
  %shl118 = shl nuw nsw i32 %and111, 16
  %or119 = or i32 %shl118, %and116
  store i32 %or119, ptr %add.ptr115, align 4
  %84 = ptrtoint ptr %match106 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %match106, align 4
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %85, align 1
  %88 = and i8 %87, 3
  %and128 = zext i8 %88 to i32
  %add.ptr132 = getelementptr %struct.mlx5_flow_spec, ptr %spec, i32 0, i32 2, i32 4
  %89 = ptrtoint ptr %add.ptr132 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %add.ptr132, align 4
  %and133 = and i32 %90, -196609
  %shl135 = shl nuw nsw i32 %and128, 16
  %or136 = or i32 %shl135, %and133
  store i32 %or136, ptr %add.ptr132, align 4
  %91 = load i8, ptr %78, align 1
  %92 = lshr i8 %91, 2
  %93 = zext i8 %92 to i32
  %and149 = and i32 %or119, -16515073
  %shl151 = shl nuw nsw i32 %93, 18
  %or152 = or i32 %shl151, %and149
  store i32 %or152, ptr %add.ptr115, align 4
  %94 = load i8, ptr %85, align 1
  %95 = lshr i8 %94, 2
  %96 = zext i8 %95 to i32
  %and166 = and i32 %or136, -16515073
  %shl168 = shl nuw nsw i32 %96, 18
  %or169 = or i32 %shl168, %and166
  store i32 %or169, ptr %add.ptr132, align 4
  %ttl = getelementptr inbounds %struct.flow_dissector_key_ip, ptr %78, i32 0, i32 1
  %97 = ptrtoint ptr %ttl to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %ttl, align 1
  %conv176 = zext i8 %98 to i32
  %add.ptr180 = getelementptr %struct.mlx5_flow_spec, ptr %spec, i32 0, i32 1, i32 6
  %99 = ptrtoint ptr %add.ptr180 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %add.ptr180, align 4
  %and181 = and i32 %100, -256
  %or184 = or i32 %and181, %conv176
  store i32 %or184, ptr %add.ptr180, align 4
  %ttl191 = getelementptr inbounds %struct.flow_dissector_key_ip, ptr %85, i32 0, i32 1
  %101 = ptrtoint ptr %ttl191 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %ttl191, align 1
  %conv192 = zext i8 %102 to i32
  %add.ptr196 = getelementptr %struct.mlx5_flow_spec, ptr %spec, i32 0, i32 2, i32 6
  %103 = ptrtoint ptr %add.ptr196 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %add.ptr196, align 4
  %and197 = and i32 %104, -256
  %or200 = or i32 %and197, %conv192
  store i32 %or200, ptr %add.ptr196, align 4
  %105 = load i8, ptr %ttl, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %105)
  %tobool207.not = icmp eq i8 %105, 0
  br i1 %tobool207.not, label %if.then105.cleanup.thread_crit_edge, label %land.lhs.true

if.then105.cleanup.thread_crit_edge:              ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

land.lhs.true:                                    ; preds = %if.then105
  %mdev208 = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %106 = ptrtoint ptr %mdev208 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %mdev208, align 64
  %arrayidx = getelementptr %struct.mlx5_core_dev, ptr %107, i32 0, i32 8, i32 0, i32 8
  %108 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %arrayidx, align 8
  %add.ptr210 = getelementptr i32, ptr %109, i32 24
  %110 = ptrtoint ptr %add.ptr210 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %add.ptr210, align 4
  %112 = and i32 %111, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %112)
  %tobool213.not = icmp eq i32 %112, 0
  br i1 %tobool213.not, label %do.body215, label %land.lhs.true.cleanup.thread_crit_edge

land.lhs.true.cleanup.thread_crit_edge:           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

do.body215:                                       ; preds = %land.lhs.true
  call void @do_trace_netlink_extack(ptr noundef nonnull @mlx5e_tc_tun_parse.__msg) #10
  %tobool216.not = icmp eq ptr %3, null
  br i1 %tobool216.not, label %do.body215.cleanup_crit_edge, label %if.then217

do.body215.cleanup_crit_edge:                     ; preds = %do.body215
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then217:                                       ; preds = %do.body215
  call void @__sanitizer_cov_trace_pc() #12
  %113 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr @mlx5e_tc_tun_parse.__msg, ptr %3, align 4
  br label %cleanup

cleanup.thread:                                   ; preds = %land.lhs.true.cleanup.thread_crit_edge, %if.then105.cleanup.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match106) #10
  br label %do.body223

cleanup:                                          ; preds = %if.then217, %do.body215.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match106) #10
  br label %cleanup249

do.body223:                                       ; preds = %cleanup.thread, %if.end103.do.body223_crit_edge
  %add.ptr228 = getelementptr %struct.mlx5_flow_spec, ptr %spec, i32 0, i32 1, i32 4
  %114 = ptrtoint ptr %add.ptr228 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %add.ptr228, align 4
  %or232 = or i32 %115, 8192
  store i32 %or232, ptr %add.ptr228, align 4
  %add.ptr241 = getelementptr %struct.mlx5_flow_spec, ptr %spec, i32 0, i32 2, i32 4
  %116 = ptrtoint ptr %add.ptr241 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %add.ptr241, align 4
  %and242 = and i32 %117, -8193
  store i32 %and242, ptr %add.ptr241, align 4
  br label %cleanup249

cleanup249:                                       ; preds = %do.body223, %cleanup, %if.then16.cleanup249_crit_edge, %if.then8.cleanup249_crit_edge, %mlx5e_netdev_kind.exit
  %retval.0 = phi i32 [ 0, %do.body223 ], [ %call10, %if.then8.cleanup249_crit_edge ], [ %call18, %if.then16.cleanup249_crit_edge ], [ -95, %cleanup ], [ -95, %mlx5e_netdev_kind.exit ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_rule_match_enc_control(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_rule_match_enc_ipv4_addrs(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_tc_set_ethertype(ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_rule_match_enc_ipv6_addrs(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_rule_match_enc_ip(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5e_tc_tun_parse_udp_ports(ptr nocapture noundef readonly %priv, ptr nocapture noundef readnone %spec, ptr nocapture noundef readonly %f, ptr nocapture noundef %headers_c, ptr nocapture noundef %headers_v) local_unnamed_addr #1 align 64 {
entry:
  %enc_ports = alloca %struct.flow_match_ports, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %rule.i = getelementptr inbounds %struct.flow_cls_offload, ptr %f, i32 0, i32 3
  %0 = ptrtoint ptr %rule.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rule.i, align 8
  %extack1 = getelementptr inbounds %struct.flow_cls_common_offload, ptr %f, i32 0, i32 3
  %2 = ptrtoint ptr %extack1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %extack1, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %enc_ports) #10
  %4 = ptrtoint ptr %enc_ports to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %enc_ports, align 4, !annotation !66
  %5 = getelementptr inbounds %struct.flow_match_ports, ptr %enc_ports, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %5, align 4, !annotation !66
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 8
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  %and.i.i = and i32 %10, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.i.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.i.not, label %do.body, label %if.end4

do.body:                                          ; preds = %entry
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @mlx5e_tc_tun_parse_udp_ports.__msg) #10
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %do.body.if.end_crit_edge, label %if.then3

do.body.if.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then3:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @mlx5e_tc_tun_parse_udp_ports.__msg, ptr %3, align 4
  br label %if.end

if.end:                                           ; preds = %if.then3, %do.body.if.end_crit_edge
  %netdev = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 22
  %12 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %netdev, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %13, ptr noundef nonnull @.str.9) #14
  br label %cleanup

if.end4:                                          ; preds = %entry
  call void @flow_rule_match_enc_ports(ptr noundef %1, ptr noundef nonnull %enc_ports) #10
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %5, align 4
  %dst = getelementptr inbounds %struct.anon.207, ptr %15, i32 0, i32 1
  %call5 = call ptr @memchr_inv(ptr noundef %dst, i32 noundef 255, i32 noundef 2) #10
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %do.end21, label %do.body8

do.body8:                                         ; preds = %if.end4
  call void @do_trace_netlink_extack(ptr noundef nonnull @mlx5e_tc_tun_parse_udp_ports.__msg.10) #10
  %tobool10.not = icmp eq ptr %3, null
  br i1 %tobool10.not, label %do.body8.if.end13_crit_edge, label %if.then11

do.body8.if.end13_crit_edge:                      ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.then11:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @mlx5e_tc_tun_parse_udp_ports.__msg.10, ptr %3, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %do.body8.if.end13_crit_edge
  %netdev16 = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 22
  %17 = ptrtoint ptr %netdev16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %netdev16, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %18, ptr noundef nonnull @.str.11) #14
  br label %cleanup

do.end21:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr = getelementptr i32, ptr %headers_c, i32 4
  %19 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %add.ptr, align 4
  %or = or i32 %20, -16777216
  store i32 %or, ptr %add.ptr, align 4
  %add.ptr29 = getelementptr i32, ptr %headers_v, i32 4
  %21 = ptrtoint ptr %add.ptr29 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %add.ptr29, align 4
  %and30 = and i32 %22, 16777215
  %or32 = or i32 %and30, 285212672
  store i32 %or32, ptr %add.ptr29, align 4
  %23 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %5, align 4
  %dst39 = getelementptr inbounds %struct.anon.207, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %dst39 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %dst39, align 2
  %conv = zext i16 %26 to i32
  %add.ptr43 = getelementptr i32, ptr %headers_c, i32 7
  %27 = ptrtoint ptr %add.ptr43 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %add.ptr43, align 4
  %and44 = and i32 %28, -65536
  %or47 = or i32 %and44, %conv
  store i32 %or47, ptr %add.ptr43, align 4
  %29 = ptrtoint ptr %enc_ports to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %enc_ports, align 4
  %dst53 = getelementptr inbounds %struct.anon.207, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %dst53 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %dst53, align 2
  %conv54 = zext i16 %32 to i32
  %add.ptr58 = getelementptr i32, ptr %headers_v, i32 7
  %33 = ptrtoint ptr %add.ptr58 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %add.ptr58, align 4
  %and59 = and i32 %34, -65536
  %or62 = or i32 %and59, %conv54
  store i32 %or62, ptr %add.ptr58, align 4
  %35 = ptrtoint ptr %24 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %24, align 4
  %conv69 = zext i16 %36 to i32
  %37 = load i32, ptr %add.ptr43, align 4
  %and74 = and i32 %37, 65535
  %shl76 = shl nuw i32 %conv69, 16
  %or77 = or i32 %and74, %shl76
  store i32 %or77, ptr %add.ptr43, align 4
  %38 = ptrtoint ptr %30 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %30, align 4
  %conv85 = zext i16 %39 to i32
  %40 = load i32, ptr %add.ptr58, align 4
  %and90 = and i32 %40, 65535
  %shl92 = shl nuw i32 %conv85, 16
  %or93 = or i32 %and90, %shl92
  store i32 %or93, ptr %add.ptr58, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end21, %if.end13, %if.end
  %retval.0 = phi i32 [ -95, %if.end13 ], [ 0, %do.end21 ], [ -95, %if.end ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %enc_ports) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_rule_match_enc_ports(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memchr_inv(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mlx5_lag_is_multipath(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_eswitch_uplink_get_proto_dev(ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @get_route_and_out_devs(ptr noundef %priv, ptr noundef %dev, ptr nocapture noundef %route_dev, ptr nocapture noundef %out_dev) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mdev = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %0 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev, align 64
  %eswitch = getelementptr inbounds %struct.mlx5_core_dev, ptr %1, i32 0, i32 17, i32 28
  %2 = ptrtoint ptr %eswitch to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %eswitch, align 4
  %priv_flags.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 15
  %4 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %priv_flags.i, align 16
  %and.i = and i64 %5, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call2 = tail call ptr @vlan_dev_real_dev(ptr noundef %dev) #10
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi ptr [ %call2, %cond.true ], [ %dev, %entry.cond.end_crit_edge ]
  %call3 = tail call ptr @mlx5_eswitch_uplink_get_proto_dev(ptr noundef %3, i8 noundef zeroext 0) #10
  %6 = tail call i32 @llvm.read_register.i32(metadata !56) #10
  %and.i.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %9, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !71
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i, label %cond.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

cond.end.rcu_read_lock.exit_crit_edge:            ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %cond.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.17, i32 noundef 696, ptr noundef nonnull @.str.18) #10
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %cond.end.rcu_read_lock.exit_crit_edge
  %call4 = tail call ptr @netdev_master_upper_dev_get_rcu(ptr noundef %call3) #10
  %tobool.not = icmp eq ptr %call4, null
  br i1 %tobool.not, label %land.end.critedge, label %do.body1.i

do.body1.i:                                       ; preds = %rcu_read_lock.exit
  %10 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !67
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %call4, i32 0, i32 118
  %11 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pcpu_refcnt.i, align 4
  %13 = ptrtoint ptr %12 to i32
  %14 = tail call i32 @llvm.read_register.i32(metadata !56) #10
  %and.i.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %17
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %19, %13
  %20 = inttoptr i32 %add.i to ptr
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 4
  %add13.i = add i32 %22, 1
  store i32 %add13.i, ptr %20, align 4
  %23 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !68
  %and.i.i.i = and i32 %23, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.dev_hold.exit_crit_edge, !prof !69

do.body1.i.dev_hold.exit_crit_edge:               ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_hold.exit

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @warn_bogus_irq_restore() #10
  br label %dev_hold.exit

dev_hold.exit:                                    ; preds = %if.then28.i, %do.body1.i.dev_hold.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %10) #10, !srcloc !70
  %call.i70 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i70, label %dev_hold.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i73

dev_hold.exit.rcu_read_unlock.exit_crit_edge:     ; preds = %dev_hold.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i73:                                ; preds = %dev_hold.exit
  %call1.i71 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i71)
  %tobool.not.i72 = icmp eq i32 %call1.i71, 0
  br i1 %tobool.not.i72, label %land.lhs.true.i73.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i75

land.lhs.true.i73.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i73
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i75:                               ; preds = %land.lhs.true.i73
  %.b4.i74 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i74, label %land.lhs.true2.i75.rcu_read_unlock.exit_crit_edge, label %if.then.i76

land.lhs.true2.i75.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i75
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i76:                                      ; preds = %land.lhs.true2.i75
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.17, i32 noundef 724, ptr noundef nonnull @.str.19) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i76, %land.lhs.true2.i75.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i73.rcu_read_unlock.exit_crit_edge, %dev_hold.exit.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !72
  %24 = tail call i32 @llvm.read_register.i32(metadata !56) #10
  %and.i.i.i.i.i77 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i.i.i.i77 to ptr
  %preempt_count.i.i.i.i78 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %preempt_count.i.i.i.i78 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %preempt_count.i.i.i.i78, align 4
  %sub.i.i.i = add i32 %27, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i78, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  %flags.i.i = getelementptr inbounds %struct.net_device, ptr %call4, i32 0, i32 14
  %28 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %flags.i.i, align 8
  %and.i.i79 = and i32 %29, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i79)
  %tobool.not.i.i = icmp eq i32 %and.i.i79, 0
  br i1 %tobool.not.i.i, label %rcu_read_unlock.exit.lor.rhs.i_crit_edge, label %netif_is_bond_master.exit.i

rcu_read_unlock.exit.lor.rhs.i_crit_edge:         ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.rhs.i

netif_is_bond_master.exit.i:                      ; preds = %rcu_read_unlock.exit
  %priv_flags.i.i = getelementptr inbounds %struct.net_device, ptr %call4, i32 0, i32 15
  %30 = ptrtoint ptr %priv_flags.i.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %priv_flags.i.i, align 16
  %and1.i.i = and i64 %31, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1.i.i)
  %tobool2.i.not.i = icmp eq i64 %and1.i.i, 0
  br i1 %tobool2.i.not.i, label %netif_is_bond_master.exit.i.lor.rhs.i_crit_edge, label %netif_is_bond_master.exit.i.netif_is_lag_master.exit_crit_edge

netif_is_bond_master.exit.i.netif_is_lag_master.exit_crit_edge: ; preds = %netif_is_bond_master.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %netif_is_lag_master.exit

netif_is_bond_master.exit.i.lor.rhs.i_crit_edge:  ; preds = %netif_is_bond_master.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.rhs.i

lor.rhs.i:                                        ; preds = %netif_is_bond_master.exit.i.lor.rhs.i_crit_edge, %rcu_read_unlock.exit.lor.rhs.i_crit_edge
  %priv_flags.i3.i = getelementptr inbounds %struct.net_device, ptr %call4, i32 0, i32 15
  %32 = ptrtoint ptr %priv_flags.i3.i to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %priv_flags.i3.i, align 16
  %and.i4.i = and i64 %33, 4194304
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i4.i)
  %tobool.i.i = icmp ne i64 %and.i4.i, 0
  br label %netif_is_lag_master.exit

netif_is_lag_master.exit:                         ; preds = %lor.rhs.i, %netif_is_bond_master.exit.i.netif_is_lag_master.exit_crit_edge
  %34 = phi i1 [ true, %netif_is_bond_master.exit.i.netif_is_lag_master.exit_crit_edge ], [ %tobool.i.i, %lor.rhs.i ]
  %cmp = icmp eq ptr %cond, %call4
  %or.cond = select i1 %34, i1 %cmp, i1 false
  br i1 %or.cond, label %land.rhs, label %netif_is_lag_master.exit.do.body1.i100_crit_edge

netif_is_lag_master.exit.do.body1.i100_crit_edge: ; preds = %netif_is_lag_master.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body1.i100

land.rhs:                                         ; preds = %netif_is_lag_master.exit
  call void @__sanitizer_cov_trace_pc() #12
  %35 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %mdev, align 64
  %call9 = tail call zeroext i1 @mlx5_lag_is_sriov(ptr noundef %36) #10
  br label %do.body1.i100

land.end.critedge:                                ; preds = %rcu_read_lock.exit
  %call.i80 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i80, label %land.end.critedge.land.end_crit_edge, label %land.lhs.true.i83

land.end.critedge.land.end_crit_edge:             ; preds = %land.end.critedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.end

land.lhs.true.i83:                                ; preds = %land.end.critedge
  %call1.i81 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i81)
  %tobool.not.i82 = icmp eq i32 %call1.i81, 0
  br i1 %tobool.not.i82, label %land.lhs.true.i83.land.end_crit_edge, label %land.lhs.true2.i85

land.lhs.true.i83.land.end_crit_edge:             ; preds = %land.lhs.true.i83
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.end

land.lhs.true2.i85:                               ; preds = %land.lhs.true.i83
  %.b4.i84 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i84, label %land.lhs.true2.i85.land.end_crit_edge, label %if.then.i86

land.lhs.true2.i85.land.end_crit_edge:            ; preds = %land.lhs.true2.i85
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.end

if.then.i86:                                      ; preds = %land.lhs.true2.i85
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.17, i32 noundef 724, ptr noundef nonnull @.str.19) #10
  br label %land.end

land.end:                                         ; preds = %if.then.i86, %land.lhs.true2.i85.land.end_crit_edge, %land.lhs.true.i83.land.end_crit_edge, %land.end.critedge.land.end_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !72
  %37 = tail call i32 @llvm.read_register.i32(metadata !56) #10
  %and.i.i.i.i.i87 = and i32 %37, -16384
  %38 = inttoptr i32 %and.i.i.i.i.i87 to ptr
  %preempt_count.i.i.i.i88 = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %preempt_count.i.i.i.i88 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %preempt_count.i.i.i.i88, align 4
  %sub.i.i.i89 = add i32 %40, -1
  store volatile i32 %sub.i.i.i89, ptr %preempt_count.i.i.i.i88, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  br label %if.end12

do.body1.i100:                                    ; preds = %land.rhs, %netif_is_lag_master.exit.do.body1.i100_crit_edge
  %.ph = phi i1 [ %call9, %land.rhs ], [ false, %netif_is_lag_master.exit.do.body1.i100_crit_edge ]
  %41 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !67
  %42 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pcpu_refcnt.i, align 4
  %44 = ptrtoint ptr %43 to i32
  %45 = tail call i32 @llvm.read_register.i32(metadata !56) #10
  %and.i.i93 = and i32 %45, -16384
  %46 = inttoptr i32 %and.i.i93 to ptr
  %cpu.i94 = getelementptr inbounds %struct.thread_info, ptr %46, i32 0, i32 3
  %47 = ptrtoint ptr %cpu.i94 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %cpu.i94, align 4
  %arrayidx.i95 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %48
  %49 = ptrtoint ptr %arrayidx.i95 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx.i95, align 4
  %add.i96 = add i32 %50, %44
  %51 = inttoptr i32 %add.i96 to ptr
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %51, align 4
  %add13.i97 = add i32 %53, -1
  store i32 %add13.i97, ptr %51, align 4
  %54 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !68
  %and.i.i.i98 = and i32 %54, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i98)
  %tobool24.not.i99 = icmp eq i32 %and.i.i.i98, 0
  br i1 %tobool24.not.i99, label %if.then28.i101, label %do.body1.i100.dev_put.exit_crit_edge, !prof !69

do.body1.i100.dev_put.exit_crit_edge:             ; preds = %do.body1.i100
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_put.exit

if.then28.i101:                                   ; preds = %do.body1.i100
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @warn_bogus_irq_restore() #10
  br label %dev_put.exit

dev_put.exit:                                     ; preds = %if.then28.i101, %do.body1.i100.dev_put.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %41) #10, !srcloc !70
  br label %if.end12

if.end12:                                         ; preds = %dev_put.exit, %land.end
  %55 = phi i1 [ %.ph, %dev_put.exit ], [ false, %land.end ]
  %56 = ptrtoint ptr %route_dev to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %dev, ptr %route_dev, align 4
  %netdev = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 22
  %57 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %netdev, align 4
  %call13 = tail call zeroext i1 @netdev_port_same_parent_id(ptr noundef %58, ptr noundef %cond) #10
  %call13.not = xor i1 %call13, true
  %brmerge = select i1 %call13.not, i1 true, i1 %55
  br i1 %brmerge, label %if.end12.if.end26_crit_edge, label %lor.lhs.false15

if.end12.if.end26_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

lor.lhs.false15:                                  ; preds = %if.end12
  %59 = ptrtoint ptr %route_dev to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %route_dev, align 4
  %priv_flags.i103 = getelementptr inbounds %struct.net_device, ptr %60, i32 0, i32 15
  %61 = ptrtoint ptr %priv_flags.i103 to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %priv_flags.i103, align 16
  %63 = and i64 %62, 1048577
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %63)
  %.not = icmp eq i64 %63, 0
  br i1 %.not, label %if.else, label %lor.lhs.false15.if.end26_crit_edge

lor.lhs.false15.if.end26_crit_edge:               ; preds = %lor.lhs.false15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

if.else:                                          ; preds = %lor.lhs.false15
  %call.i109 = tail call zeroext i1 @mlx5e_eswitch_vf_rep(ptr noundef %dev) #10
  br i1 %call.i109, label %if.else.land.lhs.true21_crit_edge, label %mlx5e_eswitch_rep.exit

if.else.land.lhs.true21_crit_edge:                ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true21

mlx5e_eswitch_rep.exit:                           ; preds = %if.else
  %call1.i110 = tail call zeroext i1 @mlx5e_eswitch_uplink_rep(ptr noundef %dev) #10
  br i1 %call1.i110, label %mlx5e_eswitch_rep.exit.land.lhs.true21_crit_edge, label %mlx5e_eswitch_rep.exit.cleanup_crit_edge

mlx5e_eswitch_rep.exit.cleanup_crit_edge:         ; preds = %mlx5e_eswitch_rep.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

mlx5e_eswitch_rep.exit.land.lhs.true21_crit_edge: ; preds = %mlx5e_eswitch_rep.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true21

land.lhs.true21:                                  ; preds = %mlx5e_eswitch_rep.exit.land.lhs.true21_crit_edge, %if.else.land.lhs.true21_crit_edge
  %call22 = tail call zeroext i1 @mlx5e_is_valid_eswitch_fwd_dev(ptr noundef %priv, ptr noundef %dev) #10
  br i1 %call22, label %if.then23, label %land.lhs.true21.cleanup_crit_edge

land.lhs.true21.cleanup_crit_edge:                ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then23:                                        ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #12
  %64 = ptrtoint ptr %route_dev to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %route_dev, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.then23, %lor.lhs.false15.if.end26_crit_edge, %if.end12.if.end26_crit_edge
  %storemerge = phi ptr [ %65, %if.then23 ], [ %call3, %if.end12.if.end26_crit_edge ], [ %call3, %lor.lhs.false15.if.end26_crit_edge ]
  %66 = ptrtoint ptr %out_dev to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %storemerge, ptr %out_dev, align 4
  %call.i112 = tail call zeroext i1 @mlx5e_eswitch_vf_rep(ptr noundef %storemerge) #10
  br i1 %call.i112, label %if.end26.land.lhs.true28_crit_edge, label %mlx5e_eswitch_rep.exit115

if.end26.land.lhs.true28_crit_edge:               ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true28

mlx5e_eswitch_rep.exit115:                        ; preds = %if.end26
  %call1.i113 = tail call zeroext i1 @mlx5e_eswitch_uplink_rep(ptr noundef %storemerge) #10
  br i1 %call1.i113, label %mlx5e_eswitch_rep.exit115.land.lhs.true28_crit_edge, label %mlx5e_eswitch_rep.exit115.cleanup_crit_edge

mlx5e_eswitch_rep.exit115.cleanup_crit_edge:      ; preds = %mlx5e_eswitch_rep.exit115
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

mlx5e_eswitch_rep.exit115.land.lhs.true28_crit_edge: ; preds = %mlx5e_eswitch_rep.exit115
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true28

land.lhs.true28:                                  ; preds = %mlx5e_eswitch_rep.exit115.land.lhs.true28_crit_edge, %if.end26.land.lhs.true28_crit_edge
  %67 = ptrtoint ptr %out_dev to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %out_dev, align 4
  %add.ptr.i = getelementptr i8, ptr %68, i32 2304
  %call30 = tail call zeroext i1 @mlx5e_is_uplink_rep(ptr noundef %add.ptr.i) #10
  br i1 %call30, label %if.end32, label %land.lhs.true28.cleanup_crit_edge

land.lhs.true28.cleanup_crit_edge:                ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end32:                                         ; preds = %land.lhs.true28
  %69 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %netdev, align 4
  %call34 = tail call zeroext i1 @mlx5e_eswitch_uplink_rep(ptr noundef %70) #10
  br i1 %call34, label %land.lhs.true35, label %if.end32.if.end39_crit_edge

if.end32.if.end39_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39

land.lhs.true35:                                  ; preds = %if.end32
  %71 = ptrtoint ptr %out_dev to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %out_dev, align 4
  %73 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %netdev, align 4
  %cmp37.not = icmp eq ptr %72, %74
  br i1 %cmp37.not, label %land.lhs.true35.if.end39_crit_edge, label %land.lhs.true35.cleanup_crit_edge

land.lhs.true35.cleanup_crit_edge:                ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true35.if.end39_crit_edge:               ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39

if.end39:                                         ; preds = %land.lhs.true35.if.end39_crit_edge, %if.end32.if.end39_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end39, %land.lhs.true35.cleanup_crit_edge, %land.lhs.true28.cleanup_crit_edge, %mlx5e_eswitch_rep.exit115.cleanup_crit_edge, %land.lhs.true21.cleanup_crit_edge, %mlx5e_eswitch_rep.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end39 ], [ -95, %land.lhs.true21.cleanup_crit_edge ], [ -95, %mlx5e_eswitch_rep.exit.cleanup_crit_edge ], [ -95, %land.lhs.true28.cleanup_crit_edge ], [ -95, %mlx5e_eswitch_rep.exit115.cleanup_crit_edge ], [ -95, %land.lhs.true35.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip_route_output_flow(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vlan_dev_real_dev(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @netdev_master_upper_dev_get_rcu(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mlx5_lag_is_sriov(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @netdev_port_same_parent_id(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mlx5e_is_valid_eswitch_fwd_dev(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mlx5e_is_uplink_rep(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mlx5e_eswitch_uplink_rep(ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mlx5e_eswitch_vf_rep(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_release(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @vlan_dev_vlan_proto(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @vlan_dev_vlan_id(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__neigh_event_send(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlx5e_tc_tun_route_attr_cleanup(ptr nocapture noundef readonly %attr) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %n = getelementptr inbounds %struct.mlx5e_tc_tun_route_attr, ptr %attr, i32 0, i32 3
  %0 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %n, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  %refcnt.i = getelementptr inbounds %struct.neighbour, ptr %1, i32 0, i32 6
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !73
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #10
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #10, !srcloc !74
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.if.end_crit_edge, label %if.then10.i.i.i.i, !prof !75

if.end5.i.i.i.i.if.end_crit_edge:                 ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 3) #10
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !76
  tail call void @neigh_destroy(ptr noundef nonnull %1) #10
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  %route_dev = getelementptr inbounds %struct.mlx5e_tc_tun_route_attr, ptr %attr, i32 0, i32 1
  %3 = ptrtoint ptr %route_dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %route_dev, align 4
  %tobool2.not = icmp eq ptr %4, null
  br i1 %tobool2.not, label %if.end.if.end5_crit_edge, label %do.body1.i

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

do.body1.i:                                       ; preds = %if.end
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !67
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 118
  %6 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pcpu_refcnt.i, align 4
  %8 = ptrtoint ptr %7 to i32
  %9 = tail call i32 @llvm.read_register.i32(metadata !56) #10
  %and.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %12
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %14, %8
  %15 = inttoptr i32 %add.i to ptr
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  %add13.i = add i32 %17, -1
  store i32 %add13.i, ptr %15, align 4
  %18 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !68
  %and.i.i.i = and i32 %18, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.dev_put.exit_crit_edge, !prof !69

do.body1.i.dev_put.exit_crit_edge:                ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_put.exit

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @warn_bogus_irq_restore() #10
  br label %dev_put.exit

dev_put.exit:                                     ; preds = %if.then28.i, %do.body1.i.dev_put.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %5) #10, !srcloc !70
  br label %if.end5

if.end5:                                          ; preds = %dev_put.exit, %if.end.if.end5_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @neigh_destroy(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip6_dst_hoplimit(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

attributes #0 = { mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind readonly }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nobuiltin nounwind }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !45, !46, !48, !49, !51, !52, !53, !54}
!llvm.named.register.sp = !{!56}
!llvm.module.flags = !{!57, !58, !59, !60, !61, !62, !63, !64}
!llvm.ident = !{!65}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/tc_tun.c", i32 254, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @mlx5e_tc_tun_create_header_ipv4._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @mlx5e_tc_tun_create_header_ipv4._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/tc_tun.c", i32 369, i32 3}
!10 = !{ptr @mlx5e_tc_tun_update_header_ipv4._entry, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @mlx5e_tc_tun_update_header_ipv4._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/tc_tun.c", i32 523, i32 3}
!14 = !{ptr @mlx5e_tc_tun_create_header_ipv6._entry, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @mlx5e_tc_tun_create_header_ipv6._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/tc_tun.c", i32 637, i32 3}
!18 = !{ptr @mlx5e_tc_tun_update_header_ipv6._entry, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @mlx5e_tc_tun_update_header_ipv6._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/tc_tun.c", i32 814, i32 8}
!22 = !{ptr @mlx5e_tc_tun_parse.__msg, !23, !"__msg", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/tc_tun.c", i32 923, i32 4}
!24 = !{ptr @mlx5e_tc_tun_parse_udp_ports.__msg, !25, !"__msg", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/tc_tun.c", i32 953, i32 3}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/tc_tun.c", i32 956, i32 8}
!28 = !{ptr @mlx5e_tc_tun_parse_udp_ports.__msg.10, !29, !"__msg", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/tc_tun.c", i32 964, i32 3}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/tc_tun.c", i32 967, i32 8}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../include/net/vxlan.h", i32 420, i32 43}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../include/net/geneve.h", i32 68, i32 43}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../include/net/gre.h", i32 43, i32 43}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../include/net/gre.h", i32 49, i32 43}
!40 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../include/net/bareudp.h", i32 13, i32 43}
!42 = distinct !{null, !43, !"__warned", i1 false, i1 false}
!43 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!44 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!46 = distinct !{null, !47, !"__warned", i1 false, i1 false}
!47 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!48 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.20, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/tc_tun.c", i32 192, i32 3}
!51 = !{ptr @.str.21, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @mlx5e_gen_ip_tunnel_header._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @mlx5e_gen_ip_tunnel_header._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.22, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/tc_tun.c", i32 185, i32 10}
!56 = !{!"sp"}
!57 = !{i32 1, !"wchar_size", i32 2}
!58 = !{i32 1, !"min_enum_size", i32 4}
!59 = !{i32 8, !"branch-target-enforcement", i32 0}
!60 = !{i32 8, !"sign-return-address", i32 0}
!61 = !{i32 8, !"sign-return-address-all", i32 0}
!62 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!63 = !{i32 7, !"uwtable", i32 1}
!64 = !{i32 7, !"frame-pointer", i32 2}
!65 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!66 = !{!"auto-init"}
!67 = !{i64 775868, i64 775929}
!68 = !{i64 778600}
!69 = !{!"branch_weights", i32 1, i32 2000}
!70 = !{i64 778885}
!71 = !{i64 2149680024}
!72 = !{i64 2149680290}
!73 = !{i64 2148472918}
!74 = !{i64 2148387382, i64 2148387414, i64 2148387443, i64 2148387477, i64 2148387508, i64 2148387531}
!75 = !{!"branch_weights", i32 2000, i32 1}
!76 = !{i64 2150554571}
