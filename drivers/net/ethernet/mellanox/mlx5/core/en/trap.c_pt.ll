; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlx5/core/en/trap.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlx5/core/en/trap.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mlx5e_trap = type { %struct.mlx5e_rq, %struct.mlx5e_tir, %struct.napi_struct, ptr, ptr, i32, ptr, ptr, ptr, ptr, [1 x i32], %struct.mlx5e_params, %struct.mlx5e_rq_param, [120 x i8] }
%struct.mlx5e_rq = type { %union.anon, %struct.anon.171, ptr, ptr, ptr, [48 x i8], %struct.mlx5e_cq, %struct.mlx5e_cq_decomp, %struct.mlx5e_page_cache, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.dim, ptr, ptr, [1 x i32], ptr, ptr, %struct.work_struct, %struct.mlx5_wq_ctrl, i32, i8, i32, ptr, i32, %struct.mlx5e_dma_info, [72 x i8], %struct.xdp_rxq_info, ptr, [124 x i8] }
%union.anon = type { %struct.anon.163 }
%struct.anon.163 = type { %struct.mlx5_wq_ll, %struct.mlx5e_umr_wqe, ptr, ptr, i16, i16, i8, i8, i8, i8, ptr }
%struct.mlx5_wq_ll = type { %struct.mlx5_frag_buf_ctrl, ptr, ptr, i16, i16, i16 }
%struct.mlx5_frag_buf_ctrl = type { ptr, i32, i16, i16, i8, i8, i8 }
%struct.mlx5e_umr_wqe = type { %struct.mlx5_wqe_ctrl_seg, %struct.mlx5_wqe_umr_ctrl_seg, %struct.mlx5_mkey_seg, %union.anon.166 }
%struct.mlx5_wqe_ctrl_seg = type { i32, i32, i8, [2 x i8], i8, %union.anon.164 }
%union.anon.164 = type { i32 }
%struct.mlx5_wqe_umr_ctrl_seg = type { i8, [3 x i8], i16, %union.anon.165, i64, i32, [28 x i8] }
%union.anon.165 = type { i16 }
%struct.mlx5_mkey_seg = type { i8, i8, i8, i8, i32, [4 x i8], i32, i64, i64, i32, [16 x i8], i32, [3 x i8], i8, [4 x i8] }
%union.anon.166 = type { %struct.anon.167 }
%struct.anon.167 = type { %struct.anon.168, [0 x %struct.mlx5_mtt] }
%struct.anon.168 = type {}
%struct.mlx5_mtt = type { i64 }
%struct.anon.171 = type { i16, i32, i8 }
%struct.mlx5e_cq = type { %struct.mlx5_cqwq, i16, ptr, %struct.mlx5_core_cq, ptr, ptr, ptr, ptr, %struct.mlx5_wq_ctrl, [24 x i8] }
%struct.mlx5_cqwq = type { %struct.mlx5_frag_buf_ctrl, ptr, i32 }
%struct.mlx5_core_cq = type { i32, i32, ptr, ptr, ptr, %struct.refcount_struct, %struct.completion, i32, i32, ptr, ptr, i32, i32, ptr, i32, %struct.anon.185, i32, %struct.list_head, ptr, i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.4 }
%union.anon.4 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.anon.185 = type { %struct.list_head, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.mlx5e_cq_decomp = type { %struct.mlx5_cqe64, [8 x %struct.mlx5_mini_cqe8], i8, i16, i16, [122 x i8] }
%struct.mlx5_cqe64 = type { i8, i8, i16, %union.anon.159, i32, i8, i8, [2 x i8], i16, i16, i32, i8, i8, i16, i32, %union.anon.162, [4 x i8], i32, i32, i32, i32, i16, i8, i8 }
%union.anon.159 = type { %struct.anon.160 }
%struct.anon.160 = type { i8, i8, i16, i32 }
%union.anon.162 = type { i32 }
%struct.mlx5_mini_cqe8 = type { %union.anon.187, i32 }
%union.anon.187 = type { i32 }
%struct.mlx5e_page_cache = type { i32, i32, [256 x %struct.mlx5e_dma_info] }
%struct.dim = type { i8, %struct.dim_stats, %struct.dim_sample, %struct.dim_sample, %struct.work_struct, ptr, i8, i8, i8, i8, i8, i8 }
%struct.dim_stats = type { i32, i32, i32, i32, i32 }
%struct.dim_sample = type { i64, i32, i32, i16, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mlx5_wq_ctrl = type { ptr, %struct.mlx5_frag_buf, %struct.mlx5_db }
%struct.mlx5_frag_buf = type { ptr, i32, i32, i8 }
%struct.mlx5_db = type { ptr, %union.anon.186, i32, i32 }
%union.anon.186 = type { ptr }
%struct.mlx5e_dma_info = type { i32, %union.anon.0 }
%union.anon.0 = type { ptr }
%struct.xdp_rxq_info = type { ptr, i32, i32, %struct.xdp_mem_info, i32, [104 x i8] }
%struct.xdp_mem_info = type { i32, i32 }
%struct.mlx5e_tir = type { ptr, i32, %struct.list_head }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.mlx5e_params = type { i8, i8, i8, i16, %struct.anon.209, i8, i8, %struct.dim_cq_moder, %struct.dim_cq_moder, %struct.mlx5e_packet_merge_param, i8, i8, i8, i8, i8, i32, ptr, ptr, i32, i32, i8 }
%struct.anon.209 = type { i16, i8, [16 x %struct.netdev_tc_txq], %struct.anon.210 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.anon.210 = type { ptr }
%struct.dim_cq_moder = type { i16, i16, i16, i8 }
%struct.mlx5e_packet_merge_param = type { i32, i32, %struct.anon.211 }
%struct.anon.211 = type { i8, i8 }
%struct.mlx5e_rq_param = type { %struct.mlx5e_cq_param, [60 x i32], %struct.mlx5_wq_param, %struct.mlx5e_rq_frags_info }
%struct.mlx5e_cq_param = type { [16 x i32], %struct.mlx5_wq_param, i16, i8 }
%struct.mlx5_wq_param = type { i32, i32 }
%struct.mlx5e_rq_frags_info = type { [4 x %struct.mlx5e_rq_frag_info], i8, i8, i8 }
%struct.mlx5e_rq_frag_info = type { i32, i32 }
%struct.mlx5e_priv = type { ptr, ptr, [8 x i32], %struct.mlx5e_dcbx_dp, i32, i32, %struct.mutex, [48 x i8], %struct.mlx5e_rq, %struct.mlx5e_channels, [2 x [8 x i32]], ptr, ptr, %struct.mlx5e_flow_steering, ptr, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.mlx5_nb, ptr, ptr, ptr, %struct.mlx5e_stats, ptr, [12 x i8], %struct.mlx5e_channel_stats, %struct.mlx5e_ptp_stats, i16, i16, i8, i8, i8, %struct.hwtstamp_config, i16, i16, %struct.notifier_block, %struct.notifier_block, i32, %struct.udp_tunnel_nic_info, %struct.mlx5e_dcbx, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mlx5e_xsk, %struct.mlx5e_scratchpad, %struct.mlx5e_htb, ptr, [16 x i8] }
%struct.mlx5e_dcbx_dp = type { [64 x i8], i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mlx5e_channels = type { ptr, ptr, i32, %struct.mlx5e_params }
%struct.mlx5e_flow_steering = type { ptr, ptr, %struct.mlx5e_ethtool_steering, %struct.mlx5e_tc_table, %struct.mlx5e_promisc_table, ptr, %struct.mlx5e_l2_table, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mlx5e_ethtool_steering = type { [7 x %struct.mlx5e_ethtool_table], [4 x %struct.mlx5e_ethtool_table], %struct.list_head, i32 }
%struct.mlx5e_ethtool_table = type { ptr, i32 }
%struct.mlx5e_tc_table = type { %struct.mutex, ptr, ptr, ptr, %struct.rhashtable, %struct.mod_hdr_tbl, %struct.mutex, [256 x %struct.hlist_head], %struct.notifier_block, %struct.netdev_net_notifier, ptr, ptr }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.mod_hdr_tbl = type { %struct.mutex, [256 x %struct.hlist_head] }
%struct.hlist_head = type { ptr }
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
%struct.mlx5_trap_ctx = type { i32, i32 }
%struct.mlx5e_create_cq_param = type { ptr, ptr, i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.138, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.158, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.138 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.158 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.mlx5_core_dev = type { ptr, i32, ptr, %struct.mutex, i32, i8, [64 x i8], %struct.mlx5_cmd, %struct.anon.173, ptr, i64, i32, ptr, i32, i32, %struct.mutex, i32, %struct.mlx5_priv, %struct.mlx5_profile, i32, %struct.mlx5e_resources, ptr, ptr, ptr, %struct.anon.175, ptr, ptr, %struct.mlx5_clock, ptr, ptr, ptr, i32, ptr }
%struct.mlx5_cmd = type { %struct.mlx5_nb, i32, ptr, i32, i32, ptr, i32, i16, i8, i8, i32, i32, ptr, %struct.spinlock, %struct.spinlock, i8, i32, [32 x i8], ptr, %struct.semaphore, %struct.semaphore, i32, i16, [32 x ptr], ptr, %struct.mlx5_cmd_debug, [5 x %struct.cmd_msg_cache], i32, ptr }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.mlx5_cmd_debug = type { ptr, ptr, ptr, i8, i16, i16 }
%struct.cmd_msg_cache = type { %struct.spinlock, %struct.list_head, i32, i32 }
%struct.anon.173 = type { [38 x ptr], [20 x i32], [3 x [18 x i32]], [64 x i32], [18 x i32], i8 }
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
%struct.mlx5_profile = type { i64, i8, [23 x %struct.anon.174] }
%struct.anon.174 = type { i32, i32 }
%struct.mlx5e_resources = type { %struct.mlx5e_hw_objs, %struct.devlink_port, ptr }
%struct.mlx5e_hw_objs = type { i32, %struct.mlx5_td, i32, %struct.mlx5_sq_bfreg }
%struct.mlx5_td = type { %struct.mutex, %struct.list_head, i32 }
%struct.mlx5_sq_bfreg = type { ptr, ptr, i8, i32, i32 }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.147 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.147 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%struct.anon.175 = type { %struct.mlx5_rsvd_gids, i32 }
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
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.172, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.172 = type { ptr }

@.str = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: Unsupported action %d\0A\00", [37 x i8] zeroinitializer }, align 32
@__func__.mlx5e_handle_trap_event = private unnamed_addr constant [24 x i8] c"mlx5e_handle_trap_event\00", align 1
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: Unknown trap id %d\0A\00", [40 x i8] zeroinitializer }, align 32
@__func__.mlx5e_handle_action_trap = private unnamed_addr constant [25 x i8] c"mlx5e_handle_action_trap\00", align 1
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__func__.mlx5e_handle_action_drop = private unnamed_addr constant [25 x i8] c"mlx5e_handle_action_drop\00", align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.2 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 91]
@__sancov_gen_cov_switch_values.3 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 91]
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 286, i32 29 }
@___asan_gen_.7 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.8 = private constant [53 x i8] c"../drivers/net/ethernet/mellanox/mlx5/core/en/trap.c\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 235, i32 29 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @.str, ptr @.str.1], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5e_close_trap(ptr noundef %trap) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tir = getelementptr inbounds %struct.mlx5e_trap, ptr %trap, i32 0, i32 1
  tail call void @mlx5e_tir_destroy(ptr noundef %tir) #8
  tail call void @mlx5e_close_rq(ptr noundef %trap) #8
  %cq.i = getelementptr inbounds %struct.mlx5e_rq, ptr %trap, i32 0, i32 6
  tail call void @mlx5e_close_cq(ptr noundef %cq.i) #8
  %napi = getelementptr inbounds %struct.mlx5e_trap, ptr %trap, i32 0, i32 2
  tail call void @__netif_napi_del(ptr noundef %napi) #8
  tail call void @synchronize_net() #8
  tail call void @kvfree(ptr noundef %trap) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_tir_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5e_deactivate_trap(ptr nocapture noundef readonly %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %en_trap = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 23
  %0 = ptrtoint ptr %en_trap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %en_trap, align 8
  tail call void @mlx5e_deactivate_rq(ptr noundef %1) #8
  %napi = getelementptr inbounds %struct.mlx5e_trap, ptr %1, i32 0, i32 2
  tail call void @napi_disable(ptr noundef %napi) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_deactivate_rq(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5e_handle_trap_event(ptr noundef %priv, ptr nocapture noundef readonly %trap_ctx) local_unnamed_addr #0 align 64 {
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
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %action = getelementptr inbounds %struct.mlx5_trap_ctx, ptr %trap_ctx, i32 0, i32 1
  %2 = ptrtoint ptr %action to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %action, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 0, label %sw.bb2
  ]

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %trap_ctx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %trap_ctx, align 4
  %call1 = tail call fastcc i32 @mlx5e_handle_action_trap(ptr noundef %priv, i32 noundef %6)
  br label %cleanup

sw.bb2:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %trap_ctx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %trap_ctx, align 4
  %call4 = tail call fastcc i32 @mlx5e_handle_action_drop(ptr noundef %priv, i32 noundef %8)
  br label %cleanup

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %netdev = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 22
  %9 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %netdev, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %10, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.mlx5e_handle_trap_event, i32 noundef %3) #11
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %sw.bb2, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -22, %sw.default ], [ %call4, %sw.bb2 ], [ %call1, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlx5e_handle_action_trap(ptr noundef %priv, i32 noundef %trap_id) unnamed_addr #0 align 64 {
entry:
  %ccp.i.i.i = alloca %struct.mlx5e_create_cq_param, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %en_trap = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 23
  %0 = ptrtoint ptr %en_trap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %en_trap, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.then:                                          ; preds = %entry
  %mdev.i.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %2 = ptrtoint ptr %mdev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mdev.i.i, align 64
  %call.i.i = tail call ptr @mlx5_comp_irq_get_affinity_mask(ptr noundef %3, i32 noundef 0) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  %call.i.i.i = tail call i32 @_find_first_bit_be(ptr noundef %call.i.i, i32 noundef %4) #8
  %netdev2.i.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 22
  %5 = ptrtoint ptr %netdev2.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %netdev2.i.i, align 4
  %call.i63.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef 4352, i32 noundef 3520, i32 noundef 0) #12
  %tobool.not.i.i = icmp eq ptr %call.i63.i.i, null
  br i1 %tobool.not.i.i, label %if.then.if.then3_crit_edge, label %if.end.i.i

if.then.if.then3_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then3

if.end.i.i:                                       ; preds = %if.then
  %7 = ptrtoint ptr %mdev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mdev.i.i, align 64
  %max_mtu.i.i = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 31
  %9 = ptrtoint ptr %max_mtu.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %max_mtu.i.i, align 4
  %q_counter.i.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 35
  %11 = ptrtoint ptr %q_counter.i.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %q_counter.i.i, align 4
  %params1.i.i.i = getelementptr inbounds %struct.mlx5e_trap, ptr %call.i63.i.i, i32 0, i32 11
  %rq_wq_type.i.i.i = getelementptr inbounds %struct.mlx5e_trap, ptr %call.i63.i.i, i32 0, i32 11, i32 1
  %13 = ptrtoint ptr %rq_wq_type.i.i.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %rq_wq_type.i.i.i, align 1
  tail call void @mlx5e_init_rq_type_params(ptr noundef %8, ptr noundef %params1.i.i.i) #8
  %sw_mtu.i.i.i = getelementptr inbounds %struct.mlx5e_trap, ptr %call.i63.i.i, i32 0, i32 11, i32 18
  %14 = ptrtoint ptr %sw_mtu.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %10, ptr %sw_mtu.i.i.i, align 4
  %rq_param.i.i.i = getelementptr inbounds %struct.mlx5e_trap, ptr %call.i63.i.i, i32 0, i32 12
  %call.i64.i.i = tail call i32 @mlx5e_build_rq_param(ptr noundef %8, ptr noundef %params1.i.i.i, ptr noundef null, i16 noundef zeroext %12, ptr noundef %rq_param.i.i.i) #8
  %priv6.i.i = getelementptr inbounds %struct.mlx5e_trap, ptr %call.i63.i.i, i32 0, i32 7
  %15 = ptrtoint ptr %priv6.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %priv, ptr %priv6.i.i, align 128
  %16 = ptrtoint ptr %mdev.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mdev.i.i, align 64
  %mdev8.i.i = getelementptr inbounds %struct.mlx5e_trap, ptr %call.i63.i.i, i32 0, i32 8
  %18 = ptrtoint ptr %mdev8.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %mdev8.i.i, align 4
  %tstamp.i.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 34
  %tstamp9.i.i = getelementptr inbounds %struct.mlx5e_trap, ptr %call.i63.i.i, i32 0, i32 9
  %19 = ptrtoint ptr %tstamp9.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %tstamp.i.i, ptr %tstamp9.i.i, align 8
  %pdev.i.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %17, i32 0, i32 2
  %20 = ptrtoint ptr %pdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pdev.i.i.i, align 8
  %dev1.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 44
  %pdev.i.i = getelementptr inbounds %struct.mlx5e_trap, ptr %call.i63.i.i, i32 0, i32 3
  %22 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %dev1.i.i.i, ptr %pdev.i.i, align 16
  %23 = ptrtoint ptr %netdev2.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %netdev2.i.i, align 4
  %netdev13.i.i = getelementptr inbounds %struct.mlx5e_trap, ptr %call.i63.i.i, i32 0, i32 4
  %25 = ptrtoint ptr %netdev13.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %24, ptr %netdev13.i.i, align 4
  %mkey.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %17, i32 0, i32 20, i32 0, i32 2
  %26 = ptrtoint ptr %mkey.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %mkey.i.i, align 4
  %mkey_be.i.i = getelementptr inbounds %struct.mlx5e_trap, ptr %call.i63.i.i, i32 0, i32 5
  %28 = ptrtoint ptr %mkey_be.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %mkey_be.i.i, align 8
  %trap_stats.i.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 27
  %stats.i.i = getelementptr inbounds %struct.mlx5e_trap, ptr %call.i63.i.i, i32 0, i32 6
  %29 = ptrtoint ptr %stats.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %trap_stats.i.i, ptr %stats.i.i, align 4
  %napi.i.i = getelementptr inbounds %struct.mlx5e_trap, ptr %call.i63.i.i, i32 0, i32 2
  tail call void @netif_napi_add(ptr noundef %6, ptr noundef %napi.i.i, ptr noundef nonnull @mlx5e_trap_napi_poll, i32 noundef 64) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ccp.i.i.i) #8
  %node4.i.i.i = getelementptr inbounds %struct.mlx5e_create_cq_param, ptr %ccp.i.i.i, i32 0, i32 2
  %30 = ptrtoint ptr %node4.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -1, ptr %node4.i.i.i, align 4
  %31 = ptrtoint ptr %stats.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %stats.i.i, align 4
  %ch_stats.i.i.i = getelementptr inbounds %struct.mlx5e_create_cq_param, ptr %ccp.i.i.i, i32 0, i32 1
  %33 = ptrtoint ptr %ch_stats.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %32, ptr %ch_stats.i.i.i, align 4
  %34 = ptrtoint ptr %ccp.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %napi.i.i, ptr %ccp.i.i.i, align 4
  %ix.i.i.i = getelementptr inbounds %struct.mlx5e_create_cq_param, ptr %ccp.i.i.i, i32 0, i32 3
  %35 = ptrtoint ptr %ix.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %ix.i.i.i, align 4
  %cq.i.i.i = getelementptr inbounds %struct.mlx5e_rq, ptr %call.i63.i.i, i32 0, i32 6
  %call6.i.i.i = call i32 @mlx5e_open_cq(ptr noundef %priv, [2 x i32] zeroinitializer, ptr noundef %rq_param.i.i.i, ptr noundef nonnull %ccp.i.i.i, ptr noundef %cq.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call6.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.end.i.i.mlx5e_open_trap_rq.exit.thread.i.i_crit_edge

if.end.i.i.mlx5e_open_trap_rq.exit.thread.i.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mlx5e_open_trap_rq.exit.thread.i.i

if.end.i.i.i:                                     ; preds = %if.end.i.i
  %36 = ptrtoint ptr %mdev8.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %mdev8.i.i, align 4
  %38 = ptrtoint ptr %priv6.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %priv6.i.i, align 128
  %40 = ptrtoint ptr %rq_wq_type.i.i.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %rq_wq_type.i.i.i, align 1
  %wq_type.i.i.i.i = getelementptr inbounds %struct.mlx5e_rq, ptr %call.i63.i.i, i32 0, i32 29
  %42 = ptrtoint ptr %wq_type.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %41, ptr %wq_type.i.i.i.i, align 32
  %43 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pdev.i.i, align 16
  %pdev3.i.i.i.i = getelementptr inbounds %struct.mlx5e_rq, ptr %call.i63.i.i, i32 0, i32 2
  %45 = ptrtoint ptr %pdev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %44, ptr %pdev3.i.i.i.i, align 4
  %netdev.i.i.i.i = getelementptr inbounds %struct.mlx5e_priv, ptr %39, i32 0, i32 22
  %46 = ptrtoint ptr %netdev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %netdev.i.i.i.i, align 4
  %netdev4.i.i.i.i = getelementptr inbounds %struct.mlx5e_rq, ptr %call.i63.i.i, i32 0, i32 3
  %48 = ptrtoint ptr %netdev4.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %47, ptr %netdev4.i.i.i.i, align 8
  %priv5.i.i.i.i = getelementptr inbounds %struct.mlx5e_rq, ptr %call.i63.i.i, i32 0, i32 12
  %49 = ptrtoint ptr %priv5.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %39, ptr %priv5.i.i.i.i, align 4
  %clock.i.i.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %37, i32 0, i32 27
  %clock6.i.i.i.i = getelementptr inbounds %struct.mlx5e_rq, ptr %call.i63.i.i, i32 0, i32 10
  %50 = ptrtoint ptr %clock6.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %clock.i.i.i.i, ptr %clock6.i.i.i.i, align 4
  %tstamp.i.i.i.i = getelementptr inbounds %struct.mlx5e_priv, ptr %39, i32 0, i32 34
  %tstamp7.i.i.i.i = getelementptr inbounds %struct.mlx5e_rq, ptr %call.i63.i.i, i32 0, i32 9
  %51 = ptrtoint ptr %tstamp7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %tstamp.i.i.i.i, ptr %tstamp7.i.i.i.i, align 8
  %mdev8.i.i.i.i = getelementptr inbounds %struct.mlx5e_rq, ptr %call.i63.i.i, i32 0, i32 31
  %52 = ptrtoint ptr %mdev8.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %37, ptr %mdev8.i.i.i.i, align 8
  %53 = ptrtoint ptr %sw_mtu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %sw_mtu.i.i.i, align 4
  %hard_mtu.i.i.i.i = getelementptr inbounds %struct.mlx5e_trap, ptr %call.i63.i.i, i32 0, i32 11, i32 19
  %55 = ptrtoint ptr %hard_mtu.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %hard_mtu.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %56, %54
  %hw_mtu.i.i.i.i = getelementptr inbounds %struct.mlx5e_rq, ptr %call.i63.i.i, i32 0, i32 19
  %57 = ptrtoint ptr %hw_mtu.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %add.i.i.i.i, ptr %hw_mtu.i.i.i.i, align 16
  %rq9.i.i.i.i = getelementptr inbounds %struct.mlx5e_priv, ptr %39, i32 0, i32 27, i32 3
  %stats.i.i.i.i = getelementptr inbounds %struct.mlx5e_rq, ptr %call.i63.i.i, i32 0, i32 4
  %58 = ptrtoint ptr %stats.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %rq9.i.i.i.i, ptr %stats.i.i.i.i, align 4
  %caps.i.i.i.i.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %37, i32 0, i32 8
  %59 = ptrtoint ptr %caps.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %caps.i.i.i.i.i.i, align 8
  %add.ptr.i.i.i.i.i.i = getelementptr i32, ptr %60, i32 34
  %61 = ptrtoint ptr %add.ptr.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %add.ptr.i.i.i.i.i.i, align 4
  %shr.i.i.i.i.i.i = lshr i32 %62, 28
  %conv.i.i.i.i.i.i = and i32 %shr.i.i.i.i.i.i, 3
  %63 = add nsw i32 %conv.i.i.i.i.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %63)
  %64 = icmp ult i32 %63, 2
  %cond.i.i.i.i.i = select i1 %64, ptr @mlx5_real_time_cyc2time, ptr @mlx5_timecounter_cyc2time
  %ptp_cyc2time.i.i.i.i = getelementptr inbounds %struct.mlx5e_rq, ptr %call.i63.i.i, i32 0, i32 36
  %65 = ptrtoint ptr %ptp_cyc2time.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %cond.i.i.i.i.i, ptr %ptp_cyc2time.i.i.i.i, align 128
  %xdp_rxq.i.i.i.i = getelementptr inbounds %struct.mlx5e_rq, ptr %call.i63.i.i, i32 0, i32 35
  call void @xdp_rxq_info_unused(ptr noundef %xdp_rxq.i.i.i.i) #8
  call void @mlx5e_rq_set_trap_handlers(ptr noundef nonnull %call.i63.i.i, ptr noundef %params1.i.i.i) #8
  %call8.i.i.i = call i32 @mlx5e_open_rq(ptr noundef %params1.i.i.i, ptr noundef %rq_param.i.i.i, ptr noundef null, i32 noundef -1, ptr noundef nonnull %call.i63.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.i.i)
  %tobool9.not.i.i.i = icmp eq i32 %call8.i.i.i, 0
  br i1 %tobool9.not.i.i.i, label %if.end20.i.i, label %err_destroy_cq.i.i.i

err_destroy_cq.i.i.i:                             ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @mlx5e_close_cq(ptr noundef %cq.i.i.i) #8
  br label %mlx5e_open_trap_rq.exit.thread.i.i

mlx5e_open_trap_rq.exit.thread.i.i:               ; preds = %err_destroy_cq.i.i.i, %if.end.i.i.mlx5e_open_trap_rq.exit.thread.i.i_crit_edge
  %retval.0.i.ph.i.i = phi i32 [ %call6.i.i.i, %if.end.i.i.mlx5e_open_trap_rq.exit.thread.i.i_crit_edge ], [ %call8.i.i.i, %err_destroy_cq.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ccp.i.i.i) #8
  br label %err_napi_del.i.i

if.end20.i.i:                                     ; preds = %if.end.i.i.i
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ccp.i.i.i) #8
  %66 = ptrtoint ptr %mdev8.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %mdev8.i.i, align 4
  %rqn.i.i = getelementptr inbounds %struct.mlx5e_rq, ptr %call.i63.i.i, i32 0, i32 30
  %68 = ptrtoint ptr %rqn.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %rqn.i.i, align 4
  %call.i65.i.i = call ptr @mlx5e_tir_builder_alloc(i1 noundef zeroext false) #8
  %tobool.not.i66.i.i = icmp eq ptr %call.i65.i.i, null
  br i1 %tobool.not.i66.i.i, label %if.end20.i.i.err_close_trap_rq.i.i_crit_edge, label %mlx5e_create_trap_direct_rq_tir.exit.i.i

if.end20.i.i.err_close_trap_rq.i.i_crit_edge:     ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_close_trap_rq.i.i

mlx5e_create_trap_direct_rq_tir.exit.i.i:         ; preds = %if.end20.i.i
  %tir.i.i = getelementptr inbounds %struct.mlx5e_trap, ptr %call.i63.i.i, i32 0, i32 1
  %tdn.i.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %67, i32 0, i32 20, i32 0, i32 1, i32 2
  %70 = ptrtoint ptr %tdn.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %tdn.i.i.i, align 4
  call void @mlx5e_tir_builder_build_inline(ptr noundef nonnull %call.i65.i.i, i32 noundef %71, i32 noundef %69) #8
  %call1.i.i.i = call i32 @mlx5e_tir_init(ptr noundef %tir.i.i, ptr noundef nonnull %call.i65.i.i, ptr noundef %67, i1 noundef zeroext true) #8
  call void @mlx5e_tir_builder_free(ptr noundef nonnull %call.i65.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool23.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool23.not.i.i, label %mlx5e_create_trap_direct_rq_tir.exit.i.i.mlx5e_open_trap.exit.i_crit_edge, label %mlx5e_create_trap_direct_rq_tir.exit.i.i.err_close_trap_rq.i.i_crit_edge

mlx5e_create_trap_direct_rq_tir.exit.i.i.err_close_trap_rq.i.i_crit_edge: ; preds = %mlx5e_create_trap_direct_rq_tir.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_close_trap_rq.i.i

mlx5e_create_trap_direct_rq_tir.exit.i.i.mlx5e_open_trap.exit.i_crit_edge: ; preds = %mlx5e_create_trap_direct_rq_tir.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mlx5e_open_trap.exit.i

err_close_trap_rq.i.i:                            ; preds = %mlx5e_create_trap_direct_rq_tir.exit.i.i.err_close_trap_rq.i.i_crit_edge, %if.end20.i.i.err_close_trap_rq.i.i_crit_edge
  %retval.0.i6874.i.i = phi i32 [ %call1.i.i.i, %mlx5e_create_trap_direct_rq_tir.exit.i.i.err_close_trap_rq.i.i_crit_edge ], [ -12, %if.end20.i.i.err_close_trap_rq.i.i_crit_edge ]
  call void @mlx5e_close_rq(ptr noundef nonnull %call.i63.i.i) #8
  call void @mlx5e_close_cq(ptr noundef %cq.i.i.i) #8
  br label %err_napi_del.i.i

err_napi_del.i.i:                                 ; preds = %err_close_trap_rq.i.i, %mlx5e_open_trap_rq.exit.thread.i.i
  %err.0.i.i = phi i32 [ %retval.0.i6874.i.i, %err_close_trap_rq.i.i ], [ %retval.0.i.ph.i.i, %mlx5e_open_trap_rq.exit.thread.i.i ]
  call void @__netif_napi_del(ptr noundef %napi.i.i) #8
  call void @synchronize_net() #8
  call void @kvfree(ptr noundef nonnull %call.i63.i.i) #8
  %72 = inttoptr i32 %err.0.i.i to ptr
  br label %mlx5e_open_trap.exit.i

mlx5e_open_trap.exit.i:                           ; preds = %err_napi_del.i.i, %mlx5e_create_trap_direct_rq_tir.exit.i.i.mlx5e_open_trap.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %72, %err_napi_del.i.i ], [ %call.i63.i.i, %mlx5e_create_trap_direct_rq_tir.exit.i.i.mlx5e_open_trap.exit.i_crit_edge ]
  %cmp.i.i = icmp ugt ptr %retval.0.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %mlx5e_open_trap.exit.i.if.then3_crit_edge, label %if.end

mlx5e_open_trap.exit.i.if.then3_crit_edge:        ; preds = %mlx5e_open_trap.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then3

if.then3:                                         ; preds = %mlx5e_open_trap.exit.i.if.then3_crit_edge, %if.then.if.then3_crit_edge
  %retval.0.i7.i48 = phi ptr [ inttoptr (i32 -12 to ptr), %if.then.if.then3_crit_edge ], [ %retval.0.i.i, %mlx5e_open_trap.exit.i.if.then3_crit_edge ]
  %73 = ptrtoint ptr %retval.0.i7.i48 to i32
  br label %cleanup

if.end:                                           ; preds = %mlx5e_open_trap.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %napi.i4.i = getelementptr inbounds %struct.mlx5e_trap, ptr %retval.0.i.i, i32 0, i32 2
  call void @napi_enable(ptr noundef %napi.i4.i) #8
  call void @mlx5e_activate_rq(ptr noundef %retval.0.i.i) #8
  %74 = ptrtoint ptr %en_trap to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %retval.0.i.i, ptr %en_trap, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.end, %entry.if.end6_crit_edge
  %75 = zext i32 %trap_id to i64
  call void @__sanitizer_cov_trace_switch(i64 %75, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %trap_id, label %sw.default [
    i32 2, label %sw.bb
    i32 91, label %sw.bb13
  ]

sw.bb:                                            ; preds = %if.end6
  %76 = ptrtoint ptr %en_trap to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %en_trap, align 8
  %tirn.i = getelementptr inbounds %struct.mlx5e_trap, ptr %77, i32 0, i32 1, i32 1
  %78 = ptrtoint ptr %tirn.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %tirn.i, align 4
  %call9 = call i32 @mlx5e_add_vlan_trap(ptr noundef %priv, i32 noundef 2, i32 noundef %79) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %sw.bb.cleanup_crit_edge, label %sw.bb.err_out_crit_edge

sw.bb.err_out_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_out

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb13:                                          ; preds = %if.end6
  %80 = ptrtoint ptr %en_trap to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %en_trap, align 8
  %tirn.i41 = getelementptr inbounds %struct.mlx5e_trap, ptr %81, i32 0, i32 1, i32 1
  %82 = ptrtoint ptr %tirn.i41 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %tirn.i41, align 4
  %call16 = call i32 @mlx5e_add_mac_trap(ptr noundef %priv, i32 noundef 91, i32 noundef %83) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %sw.bb13.cleanup_crit_edge, label %sw.bb13.err_out_crit_edge

sw.bb13.err_out_crit_edge:                        ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_out

sw.bb13.cleanup_crit_edge:                        ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.default:                                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %netdev = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 22
  %84 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %netdev, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %85, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.mlx5e_handle_action_trap, i32 noundef %trap_id) #11
  br label %err_out

err_out:                                          ; preds = %sw.default, %sw.bb13.err_out_crit_edge, %sw.bb.err_out_crit_edge
  %err.0 = phi i32 [ -22, %sw.default ], [ %call16, %sw.bb13.err_out_crit_edge ], [ %call9, %sw.bb.err_out_crit_edge ]
  br i1 %tobool.not, label %if.then21, label %err_out.cleanup_crit_edge

err_out.cleanup_crit_edge:                        ; preds = %err_out
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then21:                                        ; preds = %err_out
  call void @__sanitizer_cov_trace_pc() #10
  %86 = ptrtoint ptr %en_trap to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %en_trap, align 8
  call void @mlx5e_deactivate_rq(ptr noundef %87) #8
  %napi.i.i42 = getelementptr inbounds %struct.mlx5e_trap, ptr %87, i32 0, i32 2
  call void @napi_disable(ptr noundef %napi.i.i42) #8
  %88 = ptrtoint ptr %en_trap to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %en_trap, align 8
  %tir.i.i43 = getelementptr inbounds %struct.mlx5e_trap, ptr %89, i32 0, i32 1
  call void @mlx5e_tir_destroy(ptr noundef %tir.i.i43) #8
  call void @mlx5e_close_rq(ptr noundef %89) #8
  %cq.i.i.i44 = getelementptr inbounds %struct.mlx5e_rq, ptr %89, i32 0, i32 6
  call void @mlx5e_close_cq(ptr noundef %cq.i.i.i44) #8
  %napi.i4.i45 = getelementptr inbounds %struct.mlx5e_trap, ptr %89, i32 0, i32 2
  call void @__netif_napi_del(ptr noundef %napi.i4.i45) #8
  call void @synchronize_net() #8
  call void @kvfree(ptr noundef %89) #8
  %90 = ptrtoint ptr %en_trap to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr null, ptr %en_trap, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then21, %err_out.cleanup_crit_edge, %sw.bb13.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.then3
  %retval.0 = phi i32 [ %73, %if.then3 ], [ 0, %sw.bb13.cleanup_crit_edge ], [ 0, %sw.bb.cleanup_crit_edge ], [ %err.0, %if.then21 ], [ %err.0, %err_out.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlx5e_handle_action_drop(ptr noundef %priv, i32 noundef %trap_id) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %trap_id to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.3)
  switch i32 %trap_id, label %sw.default [
    i32 2, label %sw.bb
    i32 91, label %sw.bb1
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mlx5e_remove_vlan_trap(ptr noundef %priv) #8
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mlx5e_remove_mac_trap(ptr noundef %priv) #8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %netdev = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 22
  %1 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %netdev, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %2, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.mlx5e_handle_action_drop, i32 noundef %trap_id) #11
  br label %return

sw.epilog:                                        ; preds = %sw.bb1, %sw.bb
  %en_trap = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 23
  %3 = ptrtoint ptr %en_trap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %en_trap, align 8
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %sw.epilog.return_crit_edge, label %land.lhs.true

sw.epilog.return_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

land.lhs.true:                                    ; preds = %sw.epilog
  %mdev = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %5 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mdev, align 64
  %call = tail call i32 @mlx5_devlink_trap_get_num_active(ptr noundef %6) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.then, label %land.lhs.true.return_crit_edge

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %en_trap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %en_trap, align 8
  tail call void @mlx5e_deactivate_rq(ptr noundef %8) #8
  %napi.i.i = getelementptr inbounds %struct.mlx5e_trap, ptr %8, i32 0, i32 2
  tail call void @napi_disable(ptr noundef %napi.i.i) #8
  %9 = ptrtoint ptr %en_trap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %en_trap, align 8
  %tir.i.i = getelementptr inbounds %struct.mlx5e_trap, ptr %10, i32 0, i32 1
  tail call void @mlx5e_tir_destroy(ptr noundef %tir.i.i) #8
  tail call void @mlx5e_close_rq(ptr noundef %10) #8
  %cq.i.i.i = getelementptr inbounds %struct.mlx5e_rq, ptr %10, i32 0, i32 6
  tail call void @mlx5e_close_cq(ptr noundef %cq.i.i.i) #8
  %napi.i4.i = getelementptr inbounds %struct.mlx5e_trap, ptr %10, i32 0, i32 2
  tail call void @__netif_napi_del(ptr noundef %napi.i4.i) #8
  tail call void @synchronize_net() #8
  tail call void @kvfree(ptr noundef %10) #8
  %11 = ptrtoint ptr %en_trap to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %en_trap, align 8
  br label %return

return:                                           ; preds = %if.then, %land.lhs.true.return_crit_edge, %sw.epilog.return_crit_edge, %sw.default
  %retval.0 = phi i32 [ -22, %sw.default ], [ 0, %if.then ], [ 0, %land.lhs.true.return_crit_edge ], [ 0, %sw.epilog.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5e_apply_traps(ptr noundef %priv, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  %action.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mdev.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %action.i) #8
  %0 = ptrtoint ptr %action.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %action.i, align 4, !annotation !21
  %1 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mdev.i, align 64
  %call.i = call i32 @mlx5_devlink_traps_get_action(ptr noundef %2, i32 noundef 2, ptr noundef nonnull %action.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.mlx5e_apply_trap.exit.thread8_crit_edge

entry.mlx5e_apply_trap.exit.thread8_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %mlx5e_apply_trap.exit.thread8

mlx5e_apply_trap.exit.thread8:                    ; preds = %for.inc.mlx5e_apply_trap.exit.thread8_crit_edge, %entry.mlx5e_apply_trap.exit.thread8_crit_edge
  %call.i.lcssa = phi i32 [ %call.i, %entry.mlx5e_apply_trap.exit.thread8_crit_edge ], [ %call.i.1, %for.inc.mlx5e_apply_trap.exit.thread8_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %action.i) #8
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %3 = ptrtoint ptr %action.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %action.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp.i = icmp eq i32 %4, 1
  br i1 %cmp.i, label %if.then1.i, label %mlx5e_apply_trap.exit.thread

mlx5e_apply_trap.exit.thread:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %action.i) #8
  br label %for.inc

if.then1.i:                                       ; preds = %if.end.i
  br i1 %enable, label %cond.true.i, label %cond.false.i

cond.true.i:                                      ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #10
  %call3.i = call fastcc i32 @mlx5e_handle_action_trap(ptr noundef %priv, i32 noundef 2) #8
  br label %mlx5e_apply_trap.exit

cond.false.i:                                     ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i = call fastcc i32 @mlx5e_handle_action_drop(ptr noundef %priv, i32 noundef 2) #8
  br label %mlx5e_apply_trap.exit

mlx5e_apply_trap.exit:                            ; preds = %cond.false.i, %cond.true.i
  %retval.0.i = phi i32 [ %call3.i, %cond.true.i ], [ %call4.i, %cond.false.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %action.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool1.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool1.not, label %mlx5e_apply_trap.exit.for.inc_crit_edge, label %mlx5e_apply_trap.exit.cleanup_crit_edge

mlx5e_apply_trap.exit.cleanup_crit_edge:          ; preds = %mlx5e_apply_trap.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

mlx5e_apply_trap.exit.for.inc_crit_edge:          ; preds = %mlx5e_apply_trap.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

for.inc:                                          ; preds = %mlx5e_apply_trap.exit.for.inc_crit_edge, %mlx5e_apply_trap.exit.thread
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %action.i) #8
  %5 = ptrtoint ptr %action.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %action.i, align 4, !annotation !21
  %6 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mdev.i, align 64
  %call.i.1 = call i32 @mlx5_devlink_traps_get_action(ptr noundef %7, i32 noundef 91, ptr noundef nonnull %action.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1)
  %tobool.not.i.1 = icmp eq i32 %call.i.1, 0
  br i1 %tobool.not.i.1, label %if.end.i.1, label %for.inc.mlx5e_apply_trap.exit.thread8_crit_edge

for.inc.mlx5e_apply_trap.exit.thread8_crit_edge:  ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %mlx5e_apply_trap.exit.thread8

if.end.i.1:                                       ; preds = %for.inc
  %8 = ptrtoint ptr %action.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %action.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp.i.1 = icmp eq i32 %9, 1
  br i1 %cmp.i.1, label %if.then1.i.1, label %mlx5e_apply_trap.exit.thread.1

mlx5e_apply_trap.exit.thread.1:                   ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %action.i) #8
  br label %for.inc.1

if.then1.i.1:                                     ; preds = %if.end.i.1
  br i1 %enable, label %cond.true.i.1, label %cond.false.i.1

cond.false.i.1:                                   ; preds = %if.then1.i.1
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i.1 = call fastcc i32 @mlx5e_handle_action_drop(ptr noundef %priv, i32 noundef 91) #8
  br label %mlx5e_apply_trap.exit.1

cond.true.i.1:                                    ; preds = %if.then1.i.1
  call void @__sanitizer_cov_trace_pc() #10
  %call3.i.1 = call fastcc i32 @mlx5e_handle_action_trap(ptr noundef %priv, i32 noundef 91) #8
  br label %mlx5e_apply_trap.exit.1

mlx5e_apply_trap.exit.1:                          ; preds = %cond.true.i.1, %cond.false.i.1
  %retval.0.i.1 = phi i32 [ %call3.i.1, %cond.true.i.1 ], [ %call4.i.1, %cond.false.i.1 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %action.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.1)
  %tobool1.not.1 = icmp eq i32 %retval.0.i.1, 0
  br i1 %tobool1.not.1, label %mlx5e_apply_trap.exit.1.for.inc.1_crit_edge, label %mlx5e_apply_trap.exit.1.cleanup_crit_edge

mlx5e_apply_trap.exit.1.cleanup_crit_edge:        ; preds = %mlx5e_apply_trap.exit.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

mlx5e_apply_trap.exit.1.for.inc.1_crit_edge:      ; preds = %mlx5e_apply_trap.exit.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1

for.inc.1:                                        ; preds = %mlx5e_apply_trap.exit.1.for.inc.1_crit_edge, %mlx5e_apply_trap.exit.thread.1
  br label %cleanup

cleanup:                                          ; preds = %for.inc.1, %mlx5e_apply_trap.exit.1.cleanup_crit_edge, %mlx5e_apply_trap.exit.cleanup_crit_edge, %mlx5e_apply_trap.exit.thread8
  %retval.0 = phi i32 [ %call.i.lcssa, %mlx5e_apply_trap.exit.thread8 ], [ %retval.0.i, %mlx5e_apply_trap.exit.cleanup_crit_edge ], [ %retval.0.i.1, %mlx5e_apply_trap.exit.1.cleanup_crit_edge ], [ 0, %for.inc.1 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_close_rq(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_close_cq(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__netif_napi_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_net() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_add_vlan_trap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_add_mac_trap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_comp_irq_get_affinity_mask(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_napi_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5e_trap_napi_poll(ptr noundef %napi, i32 noundef %budget) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %napi, i32 -3472
  %stats = getelementptr i8, ptr %napi, i32 236
  %0 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stats, align 4
  %poll = getelementptr inbounds %struct.mlx5e_ch_stats, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %poll to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %poll, align 8
  %inc = add i64 %3, 1
  store i64 %inc, ptr %poll, align 8
  %cq = getelementptr i8, ptr %napi, i32 -3216
  %call = tail call i32 @mlx5e_poll_rx_cq(ptr noundef %cq, i32 noundef %budget) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %budget)
  %cmp = icmp eq i32 %call, %budget
  %post_wqes = getelementptr i8, ptr %napi, i32 -624
  %4 = ptrtoint ptr %post_wqes to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %post_wqes, align 32
  %call4 = tail call zeroext i1 %5(ptr noundef %add.ptr) #8
  %or835 = or i1 %cmp, %call4
  br i1 %or835, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call12 = tail call zeroext i1 @napi_complete_done(ptr noundef %napi, i32 noundef %call) #8
  br i1 %call12, label %if.end17, label %if.end.cleanup_crit_edge, !prof !22

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end17:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %mcq1.i = getelementptr i8, ptr %napi, i32 -3184
  %uar.i = getelementptr i8, ptr %napi, i32 -3168
  %6 = ptrtoint ptr %uar.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %uar.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %cc.i = getelementptr i8, ptr %napi, i32 -3196
  %10 = ptrtoint ptr %cc.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cc.i, align 4
  %arm_sn.i.i = getelementptr i8, ptr %napi, i32 -3084
  %12 = ptrtoint ptr %arm_sn.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arm_sn.i.i, align 4
  %and1.i.i = and i32 %11, 16777215
  %and.i.i = shl i32 %13, 28
  %shl.i.i = and i32 %and.i.i, 805306368
  %or2.i.i = or i32 %shl.i.i, %and1.i.i
  %arm_db.i.i = getelementptr i8, ptr %napi, i32 -3172
  %14 = ptrtoint ptr %arm_db.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arm_db.i.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %or2.i.i, ptr %15, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !23
  tail call void @arm_heavy_mb() #8
  %17 = ptrtoint ptr %mcq1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %mcq1.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %or2.i.i) #8, !srcloc !24
  %add.ptr.i.i.i = getelementptr i8, ptr %9, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %18) #8, !srcloc !24
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end17 ], [ %budget, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_init_rq_type_params(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_build_rq_param(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_poll_rx_cq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_complete_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_open_cq(ptr noundef, [2 x i32], ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_open_rq(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xdp_rxq_info_unused(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_rq_set_trap_handlers(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i64 @mlx5_real_time_cyc2time(ptr nocapture noundef readnone %clock, i64 noundef %timestamp) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %shr = lshr i64 %timestamp, 32
  %mul = mul nuw nsw i64 %shr, 1000000000
  %and = and i64 %timestamp, 4294967295
  %add = add nuw nsw i64 %mul, %and
  ret i64 %add
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @mlx5_timecounter_cyc2time(ptr noundef %clock, i64 noundef %timestamp) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %lock = getelementptr inbounds %struct.mlx5_clock, ptr %clock, i32 0, i32 1
  %dep_map.c48.i.i = getelementptr inbounds %struct.mlx5_clock, ptr %clock, i32 0, i32 1, i32 0, i32 0, i32 1
  %tc = getelementptr inbounds %struct.mlx5_clock, ptr %clock, i32 0, i32 6, i32 1
  br label %do.body

do.body:                                          ; preds = %read_seqbegin.exit.do.body_crit_edge, %entry
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !25
  %and.i.i.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %do.body24.critedge.i.i

if.then.i.i:                                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @trace_hardirqs_off() #8
  %1 = tail call ptr @llvm.returnaddress(i32 0) #8
  %2 = ptrtoint ptr %1 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %2) #8
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i, i32 noundef %2) #8
  tail call void @trace_hardirqs_on() #8
  br label %do.body24.i.i

do.body24.critedge.i.i:                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %3 = tail call ptr @llvm.returnaddress(i32 0) #8
  %4 = ptrtoint ptr %3 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %4) #8
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i, i32 noundef %4) #8
  br label %do.body24.i.i

do.body24.i.i:                                    ; preds = %do.body24.critedge.i.i, %if.then.i.i
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !26
  %and.i.i.i.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool32.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool32.not.i.i, label %if.then36.i.i, label %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge, !prof !27

do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge: ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %seqcount_lockdep_reader_access.exit.i

if.then36.i.i:                                    ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @warn_bogus_irq_restore() #8
  br label %seqcount_lockdep_reader_access.exit.i

seqcount_lockdep_reader_access.exit.i:            ; preds = %if.then36.i.i, %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #8, !srcloc !28
  %6 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %lock, align 4
  %and18.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i)
  %tobool.not19.i = icmp eq i32 %and18.i, 0
  br i1 %tobool.not19.i, label %seqcount_lockdep_reader_access.exit.i.read_seqbegin.exit_crit_edge, label %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge

seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  br label %do.end.i

seqcount_lockdep_reader_access.exit.i.read_seqbegin.exit_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %read_seqbegin.exit

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !29
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !30
  %8 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %lock, align 4
  %and.i = and i32 %9, 1
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end.i.read_seqbegin.exit_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

do.end.i.read_seqbegin.exit_crit_edge:            ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %read_seqbegin.exit

read_seqbegin.exit:                               ; preds = %do.end.i.read_seqbegin.exit_crit_edge, %seqcount_lockdep_reader_access.exit.i.read_seqbegin.exit_crit_edge
  %.lcssa.i = phi i32 [ %7, %seqcount_lockdep_reader_access.exit.i.read_seqbegin.exit_crit_edge ], [ %9, %do.end.i.read_seqbegin.exit_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !31
  %call2 = tail call i64 @timecounter_cyc2time(ptr noundef %tc, i64 noundef %timestamp) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !32
  %10 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %lock, align 4
  %cmp.i.i.i.not = icmp eq i32 %11, %.lcssa.i
  br i1 %cmp.i.i.i.not, label %do.end, label %read_seqbegin.exit.do.body_crit_edge

read_seqbegin.exit.do.body_crit_edge:             ; preds = %read_seqbegin.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.end:                                           ; preds = %read_seqbegin.exit
  call void @__sanitizer_cov_trace_pc() #10
  ret i64 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @timecounter_cyc2time(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5e_tir_builder_alloc(i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_tir_builder_build_inline(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_tir_init(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_tir_builder_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_activate_rq(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_remove_vlan_trap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_remove_mac_trap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_devlink_trap_get_num_active(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_devlink_traps_get_action(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18, !19}
!llvm.ident = !{!20}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/trap.c", i32 286, i32 29}
!2 = !{ptr @__func__.mlx5e_handle_trap_event, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/trap.c", i32 286, i32 60}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/trap.c", i32 235, i32 29}
!6 = !{ptr @__func__.mlx5e_handle_action_trap, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/trap.c", i32 235, i32 57}
!8 = !{ptr @__func__.mlx5e_handle_action_drop, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/trap.c", i32 257, i32 57}
!10 = distinct !{null, !11, !"mlx5e_traps_arr", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/trap.c", i32 307, i32 18}
!12 = !{i32 1, !"wchar_size", i32 2}
!13 = !{i32 1, !"min_enum_size", i32 4}
!14 = !{i32 8, !"branch-target-enforcement", i32 0}
!15 = !{i32 8, !"sign-return-address", i32 0}
!16 = !{i32 8, !"sign-return-address-all", i32 0}
!17 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!18 = !{i32 7, !"uwtable", i32 1}
!19 = !{i32 7, !"frame-pointer", i32 2}
!20 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!21 = !{!"auto-init"}
!22 = !{!"branch_weights", i32 2000, i32 1}
!23 = !{i64 2158868950}
!24 = !{i64 6701057}
!25 = !{i64 1084999, i64 1085060}
!26 = !{i64 1087731}
!27 = !{!"branch_weights", i32 1, i32 2000}
!28 = !{i64 1088016}
!29 = !{i64 2149872933}
!30 = !{i64 2149872775}
!31 = !{i64 2149873103}
!32 = !{i64 2149858180}
