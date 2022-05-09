; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlx5/core/ipoib/ipoib.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlx5/core/ipoib/ipoib.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+mlx5_rdma_rn_get_params\22, \22a\22\09"
module asm "\09.weak\09__crc_mlx5_rdma_rn_get_params\09\09\09\09"
module asm "\09.long\09__crc_mlx5_rdma_rn_get_params\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mlx5_rdma_rn_get_params:\09\09\09\09\09"
module asm "\09.asciz \09\22mlx5_rdma_rn_get_params\22\09\09\09\09\09"
module asm "__kstrtabns_mlx5_rdma_rn_get_params:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mlx5e_profile = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i32 }
%struct.mlx5e_rx_handlers = type { ptr, ptr, ptr }
%struct.mlx5e_stats_grp = type { i16, ptr, ptr, ptr, ptr }
%struct.softnet_data = type { %struct.list_head, %struct.sk_buff_head, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.sk_buff_head, %struct.anon.240, [100 x i8], i32, [124 x i8], %struct.__call_single_data, ptr, i32, i32, i32, %struct.sk_buff_head, %struct.napi_struct, [72 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.anon.240 = type { i16, i8 }
%struct.__call_single_data = type { %struct.__call_single_node, ptr, ptr }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.20 }
%struct.llist_node = type { ptr }
%union.anon.20 = type { i32 }
%struct.sk_buff_head = type { %union.anon.78, i32, %struct.spinlock }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.143, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.160, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.143 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.160 = type { ptr }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.mlx5e_channel_stats = type { %struct.mlx5e_ch_stats, [80 x i8], [8 x %struct.mlx5e_sq_stats], %struct.mlx5e_rq_stats, %struct.mlx5e_rq_stats, [48 x i8], %struct.mlx5e_xdpsq_stats, %struct.mlx5e_xdpsq_stats, %struct.mlx5e_xdpsq_stats }
%struct.mlx5e_ch_stats = type { i64, i64, i64, i64, i64, i64 }
%struct.mlx5e_sq_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [48 x i8], i64, i64, i64, [104 x i8] }
%struct.mlx5e_rq_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.mlx5e_xdpsq_stats = type { i64, i64, i64, i64, i64, i64, [80 x i8], i64, [120 x i8] }
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.mlx5e_priv = type { ptr, ptr, [8 x i32], %struct.mlx5e_dcbx_dp, i32, i32, %struct.mutex, [48 x i8], %struct.mlx5e_rq, %struct.mlx5e_channels, [2 x [8 x i32]], ptr, ptr, %struct.mlx5e_flow_steering, ptr, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.mlx5_nb, ptr, ptr, ptr, %struct.mlx5e_stats, ptr, [12 x i8], %struct.mlx5e_channel_stats, %struct.mlx5e_ptp_stats, i16, i16, i8, i8, i8, %struct.hwtstamp_config, i16, i16, %struct.notifier_block, %struct.notifier_block, i32, %struct.udp_tunnel_nic_info, %struct.mlx5e_dcbx, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mlx5e_xsk, %struct.mlx5e_scratchpad, %struct.mlx5e_htb, ptr, [16 x i8] }
%struct.mlx5e_dcbx_dp = type { [64 x i8], i8 }
%struct.mlx5e_rq = type { %union.anon.182, %struct.anon.196, ptr, ptr, ptr, [48 x i8], %struct.mlx5e_cq, %struct.mlx5e_cq_decomp, %struct.mlx5e_page_cache, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.dim, ptr, ptr, [1 x i32], ptr, ptr, %struct.work_struct, %struct.mlx5_wq_ctrl, i32, i8, i32, ptr, i32, %struct.mlx5e_dma_info, [72 x i8], %struct.xdp_rxq_info, ptr, [124 x i8] }
%union.anon.182 = type { %struct.anon.189 }
%struct.anon.189 = type { %struct.mlx5_wq_ll, %struct.mlx5e_umr_wqe, ptr, ptr, i16, i16, i8, i8, i8, i8, ptr }
%struct.mlx5_wq_ll = type { %struct.mlx5_frag_buf_ctrl, ptr, ptr, i16, i16, i16 }
%struct.mlx5_frag_buf_ctrl = type { ptr, i32, i16, i16, i8, i8, i8 }
%struct.mlx5e_umr_wqe = type { %struct.mlx5_wqe_ctrl_seg, %struct.mlx5_wqe_umr_ctrl_seg, %struct.mlx5_mkey_seg, %union.anon.191 }
%struct.mlx5_wqe_ctrl_seg = type { i32, i32, i8, [2 x i8], i8, %union.anon.169 }
%union.anon.169 = type { i32 }
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
%struct.mlx5_nb = type { %struct.notifier_block, i8 }
%struct.mlx5e_stats = type { %struct.mlx5e_sw_stats, %struct.mlx5e_qcounter_stats, %struct.mlx5e_vnic_env_stats, %struct.mlx5e_vport_stats, %struct.mlx5e_pport_stats, %struct.rtnl_link_stats64, %struct.mlx5e_pcie_stats }
%struct.mlx5e_sw_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.mlx5e_qcounter_stats = type { i32, i32 }
%struct.mlx5e_vnic_env_stats = type { [66 x i64] }
%struct.mlx5e_vport_stats = type { [66 x i64] }
%struct.mlx5e_pport_stats = type { [32 x i64], [32 x i64], [32 x i64], [8 x [32 x i64]], [32 x i64], [32 x i64], [32 x i64], [8 x [32 x i64]], [8 x [32 x i64]] }
%struct.mlx5e_pcie_stats = type { [32 x i64] }
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
%struct.mlx5i_priv = type { %struct.rdma_netdev, i32, i8, i32, i16, ptr, [0 x ptr] }
%struct.rdma_netdev = type { ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mlx5_core_dev = type { ptr, i32, ptr, %struct.mutex, i32, i8, [64 x i8], %struct.mlx5_cmd, %struct.anon.138, ptr, i64, i32, ptr, i32, i32, %struct.mutex, i32, %struct.mlx5_priv, %struct.mlx5_profile, i32, %struct.mlx5e_resources, ptr, ptr, ptr, %struct.anon.161, ptr, ptr, %struct.mlx5_clock, ptr, ptr, ptr, i32, ptr }
%struct.mlx5_cmd = type { %struct.mlx5_nb, i32, ptr, i32, i32, ptr, i32, i16, i8, i8, i32, i32, ptr, %struct.spinlock, %struct.spinlock, i8, i32, [32 x i8], ptr, %struct.semaphore, %struct.semaphore, i32, i16, [32 x ptr], ptr, %struct.mlx5_cmd_debug, [5 x %struct.cmd_msg_cache], i32, ptr }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.mlx5_cmd_debug = type { ptr, ptr, ptr, i8, i16, i16 }
%struct.cmd_msg_cache = type { %struct.spinlock, %struct.list_head, i32, i32 }
%struct.anon.138 = type { [38 x ptr], [20 x i32], [3 x [18 x i32]], [64 x i32], [18 x i32], i8 }
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
%struct.mlx5_profile = type { i64, i8, [23 x %struct.anon.139] }
%struct.anon.139 = type { i32, i32 }
%struct.mlx5e_resources = type { %struct.mlx5e_hw_objs, %struct.devlink_port, ptr }
%struct.mlx5e_hw_objs = type { i32, %struct.mlx5_td, i32, %struct.mlx5_sq_bfreg }
%struct.mlx5_td = type { %struct.mutex, %struct.list_head, i32 }
%struct.mlx5_sq_bfreg = type { ptr, ptr, i8, i32, i32 }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.140 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.140 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%struct.anon.161 = type { %struct.mlx5_rsvd_gids, i32 }
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
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.119, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
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
%struct.restart_block = type { i32, ptr, %union.anon.22 }
%union.anon.22 = type { %struct.anon.23 }
%struct.anon.23 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.119 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.sk_buff = type { %union.anon.50, %union.anon.53, %union.anon.54, [48 x i8], %union.anon.55, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.57, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type { ptr, ptr, %union.anon.52 }
%union.anon.52 = type { ptr }
%union.anon.53 = type { ptr }
%union.anon.54 = type { i64 }
%union.anon.55 = type { %struct.anon.56 }
%struct.anon.56 = type { i32, ptr }
%union.anon.57 = type { %struct.anon.58 }
%struct.anon.58 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.59, i32, i32, i32, i16, i16, %union.anon.61, i32, %union.anon.62, %union.anon.63, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.59 = type { i32 }
%union.anon.61 = type { i32 }
%union.anon.62 = type { i32 }
%union.anon.63 = type { i16 }
%struct.mlx5_ib_ah = type { %struct.ib_ah, %struct.mlx5_av, i8 }
%struct.ib_ah = type { ptr, ptr, ptr, ptr, i32 }
%struct.mlx5_av = type { %union.anon.237, i32, i8, i8, %union.anon.239, [4 x i8], [6 x i8], i8, i8, i32, [16 x i8] }
%union.anon.237 = type { i64 }
%union.anon.239 = type { i16 }

@mlx5i_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr @mlx5i_dev_init, ptr @mlx5i_dev_cleanup, ptr @mlx5i_open, ptr @mlx5i_close, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mlx5i_ioctl, ptr null, ptr null, ptr null, ptr null, ptr @mlx5i_change_mtu, ptr null, ptr null, ptr @mlx5i_get_stats, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@mlx5i_ethtool_ops = external dso_local constant %struct.ethtool_ops, align 4
@__kstrtab_mlx5_rdma_rn_get_params = external dso_local constant [0 x i8], align 1
@__kstrtabns_mlx5_rdma_rn_get_params = external dso_local constant [0 x i8], align 1
@__ksymtab_mlx5_rdma_rn_get_params = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mlx5_rdma_rn_get_params to i32), ptr @__kstrtab_mlx5_rdma_rn_get_params, ptr @__kstrtabns_mlx5_rdma_rn_get_params }, section "___ksymtab+mlx5_rdma_rn_get_params", align 4
@elfcorehdr_addr = external dso_local local_unnamed_addr global i64, align 8
@mlx5i_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 534, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"%s:%d:(pid %d): prepare underlay qp state failed, %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mlx5i_open\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"drivers/net/ethernet/mellanox/mlx5/core/ipoib/ipoib.c\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mlx5i_open._entry_ptr = internal global ptr @mlx5i_open._entry, section ".printk_index", align 4
@mlx5i_open._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 540, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"%s:%d:(pid %d): attach underlay qp to ft failed, %d\0A\00", [43 x i8] zeroinitializer }, align 32
@mlx5i_open._entry_ptr.7 = internal global ptr @mlx5i_open._entry.5, section ".printk_index", align 4
@mlx5i_check_required_hca_cap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 661, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"%s:%d:(pid %d): IPoIB enhanced offloads are not supported\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"mlx5i_check_required_hca_cap\00", [35 x i8] zeroinitializer }, align 32
@mlx5i_check_required_hca_cap._entry_ptr = internal global ptr @mlx5i_check_required_hca_cap._entry, section ".printk_index", align 4
@mlx5_rdma_setup_rn._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 713, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s:%d:(pid %d): allocate qpn_to_netdev ht failed\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mlx5_rdma_setup_rn\00", [45 x i8] zeroinitializer }, align 32
@mlx5_rdma_setup_rn._entry_ptr = internal global ptr @mlx5_rdma_setup_rn._entry, section ".printk_index", align 4
@mlx5i_nic_profile = internal constant { %struct.mlx5e_profile, [56 x i8] } { %struct.mlx5e_profile { ptr @mlx5i_init, ptr @mlx5i_cleanup, ptr @mlx5i_init_rx, ptr @mlx5i_cleanup_rx, ptr @mlx5i_init_tx, ptr @mlx5i_cleanup_tx, ptr null, ptr null, ptr @mlx5i_update_nic_rx, ptr null, ptr null, ptr null, ptr @mlx5i_stats_grps_num, ptr @mlx5i_stats_grps, ptr @mlx5i_rx_handlers, i32 1, i8 1, i32 0 }, [56 x i8] zeroinitializer }, align 32
@mlx5i_stats_grps = internal constant { [13 x ptr], [44 x i8] } { [13 x ptr] [ptr @mlx5e_stats_grp_sw, ptr @mlx5e_stats_grp_qcnt, ptr @mlx5e_stats_grp_vnic_env, ptr @mlx5e_stats_grp_vport, ptr @mlx5e_stats_grp_802_3, ptr @mlx5e_stats_grp_2863, ptr @mlx5e_stats_grp_2819, ptr @mlx5e_stats_grp_phy, ptr @mlx5e_stats_grp_pcie, ptr @mlx5e_stats_grp_per_prio, ptr @mlx5e_stats_grp_pme, ptr @mlx5e_stats_grp_channels, ptr @mlx5e_stats_grp_per_port_buff_congest], [44 x i8] zeroinitializer }, align 32
@mlx5i_rx_handlers = external dso_local constant %struct.mlx5e_rx_handlers, align 4
@mlx5i_init_rx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 375, ptr @.str.14, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s:%d:(pid %d): open drop rq failed, %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mlx5i_init_rx\00", [18 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@mlx5i_init_rx._entry_ptr = internal global ptr @mlx5i_init_rx._entry, section ".printk_index", align 4
@.str.15 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to create arfs tables, err=%d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to create ttc table, err=%d\0A\00", [60 x i8] zeroinitializer }, align 32
@mlx5i_init_tx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 296, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%s:%d:(pid %d): create underlay QP failed, %d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mlx5i_init_tx\00", [18 x i8] zeroinitializer }, align 32
@mlx5i_init_tx._entry_ptr = internal global ptr @mlx5i_init_tx._entry, section ".printk_index", align 4
@mlx5i_init_tx._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.18, ptr @.str.2, i32 302, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s:%d:(pid %d): create tis failed, %d\0A\00", [57 x i8] zeroinitializer }, align 32
@mlx5i_init_tx._entry_ptr.21 = internal global ptr @mlx5i_init_tx._entry.19, section ".printk_index", align 4
@mlx5e_stats_grp_sw = external dso_local constant %struct.mlx5e_stats_grp, align 4
@mlx5e_stats_grp_qcnt = external dso_local constant %struct.mlx5e_stats_grp, align 4
@mlx5e_stats_grp_vnic_env = external dso_local constant %struct.mlx5e_stats_grp, align 4
@mlx5e_stats_grp_vport = external dso_local constant %struct.mlx5e_stats_grp, align 4
@mlx5e_stats_grp_802_3 = external dso_local constant %struct.mlx5e_stats_grp, align 4
@mlx5e_stats_grp_2863 = external dso_local constant %struct.mlx5e_stats_grp, align 4
@mlx5e_stats_grp_2819 = external dso_local constant %struct.mlx5e_stats_grp, align 4
@mlx5e_stats_grp_phy = external dso_local constant %struct.mlx5e_stats_grp, align 4
@mlx5e_stats_grp_pcie = external dso_local constant %struct.mlx5e_stats_grp, align 4
@mlx5e_stats_grp_per_prio = external dso_local constant %struct.mlx5e_stats_grp, align 4
@mlx5e_stats_grp_pme = external dso_local constant %struct.mlx5e_stats_grp, align 4
@mlx5e_stats_grp_channels = external dso_local constant %struct.mlx5e_stats_grp, align 4
@mlx5e_stats_grp_per_port_buff_congest = external dso_local constant %struct.mlx5e_stats_grp, align 4
@softnet_data = external dso_local global %struct.softnet_data, section ".data..percpu..shared_aligned", align 128
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@mlx5i_attach_mcast.__UNIQUE_ID_ddebug661 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.23, ptr @.str.24, ptr @.str.2, ptr @.str.25, i8 0, i8 -106, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mlx5_core\00", [22 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mlx5i_attach_mcast\00", [45 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%s:%d:(pid %d): attaching QPN 0x%x, MGID %pI6\0A\00", [49 x i8] zeroinitializer }, align 32
@mlx5i_attach_mcast._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.24, ptr @.str.2, i32 605, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"%s:%d:(pid %d): failed attaching QPN 0x%x, MGID %pI6\0A\00", [42 x i8] zeroinitializer }, align 32
@mlx5i_attach_mcast._entry_ptr = internal global ptr @mlx5i_attach_mcast._entry, section ".printk_index", align 4
@mlx5i_attach_mcast.__UNIQUE_ID_ddebug662 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.23, ptr @.str.24, ptr @.str.2, ptr @.str.27, i8 0, i8 -104, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s:%d:(pid %d): %s setting qkey 0x%x\0A\00", [58 x i8] zeroinitializer }, align 32
@mlx5i_detach_mcast.__UNIQUE_ID_ddebug663 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.23, ptr @.str.28, ptr @.str.2, ptr @.str.29, i8 0, i8 -100, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mlx5i_detach_mcast\00", [45 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%s:%d:(pid %d): detaching QPN 0x%x, MGID %pI6\0A\00", [49 x i8] zeroinitializer }, align 32
@mlx5i_detach_mcast.__UNIQUE_ID_ddebug664 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.23, ptr @.str.28, ptr @.str.2, ptr @.str.30, i8 0, i8 -99, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"%s:%d:(pid %d): failed detaching QPN 0x%x, MGID %pI6\0A\00", [42 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 35248, i64 35249]
@___asan_gen_.31 = private unnamed_addr constant [17 x i8] c"mlx5i_netdev_ops\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 46, i32 36 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 534, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 540, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 661, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 713, i32 4 }
@___asan_gen_.76 = private unnamed_addr constant [18 x i8] c"mlx5i_nic_profile\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 435, i32 35 }
@___asan_gen_.79 = private unnamed_addr constant [17 x i8] c"mlx5i_stats_grps\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 414, i32 26 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 375, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 333, i32 28 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 340, i32 28 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 296, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 302, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 600, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 604, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 608, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 624, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.140 = private constant [57 x i8] c"../drivers/net/ethernet/mellanox/mlx5/core/ipoib/ipoib.c\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 629, i32 3 }
@llvm.compiler.used = appending global [46 x ptr] [ptr @__ksymtab_mlx5_rdma_rn_get_params, ptr @mlx5_rdma_setup_rn._entry, ptr @mlx5_rdma_setup_rn._entry_ptr, ptr @mlx5i_attach_mcast._entry, ptr @mlx5i_attach_mcast._entry_ptr, ptr @mlx5i_check_required_hca_cap._entry, ptr @mlx5i_check_required_hca_cap._entry_ptr, ptr @mlx5i_init_rx._entry, ptr @mlx5i_init_rx._entry_ptr, ptr @mlx5i_init_tx._entry, ptr @mlx5i_init_tx._entry.19, ptr @mlx5i_init_tx._entry_ptr, ptr @mlx5i_init_tx._entry_ptr.21, ptr @mlx5i_open._entry, ptr @mlx5i_open._entry.5, ptr @mlx5i_open._entry_ptr, ptr @mlx5i_open._entry_ptr.7, ptr @mlx5i_netdev_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @mlx5i_nic_profile, ptr @mlx5i_stats_grps, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30], section "llvm.metadata"
@0 = internal global [37 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5i_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5i_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5i_open._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5i_check_required_hca_cap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_rdma_setup_rn._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5i_nic_profile to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5i_stats_grps to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5i_init_rx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5i_init_tx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5i_init_tx._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5i_attach_mcast._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5i_init(ptr noundef %mdev, ptr noundef %netdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mlx5e_priv = getelementptr i8, ptr %netdev, i32 2364
  tail call void @netif_carrier_off(ptr noundef %netdev) #9
  tail call void @mlx5e_set_netdev_mtu_boundaries(ptr noundef %mlx5e_priv) #9
  %max_mtu = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 31
  %0 = ptrtoint ptr %max_mtu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_mtu, align 4
  %mtu = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 20
  %2 = ptrtoint ptr %mtu to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %mtu, align 4
  %conv = trunc i32 %1 to i16
  tail call void @mlx5e_build_nic_params(ptr noundef %mlx5e_priv, ptr noundef null, i16 noundef zeroext %conv) #9
  %params = getelementptr i8, ptr %netdev, i32 6088
  %pflags.i = getelementptr i8, ptr %netdev, i32 6208
  %3 = ptrtoint ptr %pflags.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %pflags.i, align 4
  %and.i = and i32 %4, -9
  store i32 %and.i, ptr %pflags.i, align 4
  tail call void @mlx5e_set_rq_type(ptr noundef %mdev, ptr noundef %params) #9
  tail call void @mlx5e_init_rq_type_params(ptr noundef %mdev, ptr noundef %params) #9
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @elfcorehdr_addr to i32))
  %5 = load i64, ptr @elfcorehdr_addr, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %5)
  %cmp.i.not.i = icmp eq i64 %5, -1
  %conv.i = select i1 %cmp.i.not.i, i8 9, i8 4
  %log_rq_mtu_frames.i = getelementptr i8, ptr %netdev, i32 6090
  %6 = ptrtoint ptr %log_rq_mtu_frames.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv.i, ptr %log_rq_mtu_frames.i, align 2
  %packet_merge.i = getelementptr i8, ptr %netdev, i32 6188
  %7 = ptrtoint ptr %packet_merge.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %packet_merge.i, align 4
  %hard_mtu.i = getelementptr i8, ptr %netdev, i32 6224
  %8 = ptrtoint ptr %hard_mtu.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 64, ptr %hard_mtu.i, align 4
  %tunneled_offload_en.i = getelementptr i8, ptr %netdev, i32 6169
  %9 = ptrtoint ptr %tunneled_offload_en.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %tunneled_offload_en.i, align 1
  tail call void @mlx5e_timestamp_init(ptr noundef %mlx5e_priv) #9
  %hw_features = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 24
  %10 = ptrtoint ptr %hw_features to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %hw_features, align 8
  %or15 = or i64 %11, 1649268572179
  store i64 %or15, ptr %hw_features, align 8
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 16
  %12 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @mlx5i_netdev_ops, ptr %netdev_ops, align 8
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 44
  %13 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @mlx5i_ethtool_ops, ptr %ethtool_ops, align 16
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_set_netdev_mtu_boundaries(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_build_nic_params(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_timestamp_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5i_cleanup(ptr noundef %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mlx5e_priv_cleanup(ptr noundef %priv) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_priv_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5i_get_stats(ptr nocapture noundef %dev, ptr nocapture noundef writeonly %stats) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %stats_nch.i = getelementptr i8, ptr %dev, i32 30140
  %0 = ptrtoint ptr %stats_nch.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %stats_nch.i, align 128
  %conv.i = zext i16 %1 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp71.not.i = icmp eq i16 %1, 0
  br i1 %cmp71.not.i, label %entry.mlx5i_grp_sw_update_stats.exit_crit_edge, label %for.body.lr.ph.i

entry.mlx5i_grp_sw_update_stats.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %mlx5i_grp_sw_update_stats.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %channel_stats2.i = getelementptr i8, ptr %dev, i32 21548
  %2 = ptrtoint ptr %channel_stats2.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %channel_stats2.i, align 16
  %max_opened_tc.i = getelementptr i8, ptr %dev, i32 30144
  %4 = ptrtoint ptr %max_opened_tc.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %max_opened_tc.i, align 4
  %conv5.i = zext i8 %5 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp664.not.i = icmp eq i8 %5, 0
  br label %for.body.i

for.body.i:                                       ; preds = %for.end.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %s.sroa.0.077.i = phi i64 [ 0, %for.body.lr.ph.i ], [ %add.i, %for.end.i.for.body.i_crit_edge ]
  %s.sroa.6.076.i = phi i64 [ 0, %for.body.lr.ph.i ], [ %s.sroa.6.1.lcssa.i, %for.end.i.for.body.i_crit_edge ]
  %i.075.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc16.i, %for.end.i.for.body.i_crit_edge ]
  %s.sroa.1549.074.i = phi i64 [ 0, %for.body.lr.ph.i ], [ %s.sroa.1549.1.lcssa.i, %for.end.i.for.body.i_crit_edge ]
  %s.sroa.12.073.i = phi i64 [ 0, %for.body.lr.ph.i ], [ %s.sroa.12.1.lcssa.i, %for.end.i.for.body.i_crit_edge ]
  %s.sroa.9.072.i = phi i64 [ 0, %for.body.lr.ph.i ], [ %add3.i, %for.end.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr ptr, ptr %3, i32 %i.075.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %rq.i = getelementptr inbounds %struct.mlx5e_channel_stats, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %rq.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %rq.i, align 8
  %add.i = add i64 %9, %s.sroa.0.077.i
  %bytes.i = getelementptr inbounds %struct.mlx5e_channel_stats, ptr %7, i32 0, i32 3, i32 1
  %10 = ptrtoint ptr %bytes.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %bytes.i, align 8
  %add3.i = add i64 %11, %s.sroa.9.072.i
  br i1 %cmp664.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body8.i_crit_edge

for.body.i.for.body8.i_crit_edge:                 ; preds = %for.body.i
  br label %for.body8.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body8.i:                                      ; preds = %for.body8.i.for.body8.i_crit_edge, %for.body.i.for.body8.i_crit_edge
  %s.sroa.6.168.i = phi i64 [ %add11.i, %for.body8.i.for.body8.i_crit_edge ], [ %s.sroa.6.076.i, %for.body.i.for.body8.i_crit_edge ]
  %j.067.i = phi i32 [ %inc.i, %for.body8.i.for.body8.i_crit_edge ], [ 0, %for.body.i.for.body8.i_crit_edge ]
  %s.sroa.1549.166.i = phi i64 [ %add14.i, %for.body8.i.for.body8.i_crit_edge ], [ %s.sroa.1549.074.i, %for.body.i.for.body8.i_crit_edge ]
  %s.sroa.12.165.i = phi i64 [ %add13.i, %for.body8.i.for.body8.i_crit_edge ], [ %s.sroa.12.073.i, %for.body.i.for.body8.i_crit_edge ]
  %arrayidx9.i = getelementptr %struct.mlx5e_channel_stats, ptr %7, i32 0, i32 2, i32 %j.067.i
  %12 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %arrayidx9.i, align 128
  %add11.i = add i64 %13, %s.sroa.6.168.i
  %bytes12.i = getelementptr %struct.mlx5e_channel_stats, ptr %7, i32 0, i32 2, i32 %j.067.i, i32 1
  %14 = ptrtoint ptr %bytes12.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %bytes12.i, align 8
  %add13.i = add i64 %15, %s.sroa.12.165.i
  %dropped.i = getelementptr %struct.mlx5e_channel_stats, ptr %7, i32 0, i32 2, i32 %j.067.i, i32 24
  %16 = ptrtoint ptr %dropped.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %dropped.i, align 64
  %add14.i = add i64 %17, %s.sroa.1549.166.i
  %inc.i = add nuw nsw i32 %j.067.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv5.i
  br i1 %exitcond.not.i, label %for.body8.i.for.end.i_crit_edge, label %for.body8.i.for.body8.i_crit_edge

for.body8.i.for.body8.i_crit_edge:                ; preds = %for.body8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body8.i

for.body8.i.for.end.i_crit_edge:                  ; preds = %for.body8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.end.i:                                        ; preds = %for.body8.i.for.end.i_crit_edge, %for.body.i.for.end.i_crit_edge
  %s.sroa.12.1.lcssa.i = phi i64 [ %s.sroa.12.073.i, %for.body.i.for.end.i_crit_edge ], [ %add13.i, %for.body8.i.for.end.i_crit_edge ]
  %s.sroa.1549.1.lcssa.i = phi i64 [ %s.sroa.1549.074.i, %for.body.i.for.end.i_crit_edge ], [ %add14.i, %for.body8.i.for.end.i_crit_edge ]
  %s.sroa.6.1.lcssa.i = phi i64 [ %s.sroa.6.076.i, %for.body.i.for.end.i_crit_edge ], [ %add11.i, %for.body8.i.for.end.i_crit_edge ]
  %inc16.i = add nuw nsw i32 %i.075.i, 1
  %exitcond83.not.i = icmp eq i32 %inc16.i, %conv.i
  br i1 %exitcond83.not.i, label %for.end.i.mlx5i_grp_sw_update_stats.exit_crit_edge, label %for.end.i.for.body.i_crit_edge

for.end.i.for.body.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.end.i.mlx5i_grp_sw_update_stats.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mlx5i_grp_sw_update_stats.exit

mlx5i_grp_sw_update_stats.exit:                   ; preds = %for.end.i.mlx5i_grp_sw_update_stats.exit_crit_edge, %entry.mlx5i_grp_sw_update_stats.exit_crit_edge
  %s.sroa.9.0.lcssa.i = phi i64 [ 0, %entry.mlx5i_grp_sw_update_stats.exit_crit_edge ], [ %add3.i, %for.end.i.mlx5i_grp_sw_update_stats.exit_crit_edge ]
  %s.sroa.12.0.lcssa.i = phi i64 [ 0, %entry.mlx5i_grp_sw_update_stats.exit_crit_edge ], [ %s.sroa.12.1.lcssa.i, %for.end.i.mlx5i_grp_sw_update_stats.exit_crit_edge ]
  %s.sroa.1549.0.lcssa.i = phi i64 [ 0, %entry.mlx5i_grp_sw_update_stats.exit_crit_edge ], [ %s.sroa.1549.1.lcssa.i, %for.end.i.mlx5i_grp_sw_update_stats.exit_crit_edge ]
  %s.sroa.6.0.lcssa.i = phi i64 [ 0, %entry.mlx5i_grp_sw_update_stats.exit_crit_edge ], [ %s.sroa.6.1.lcssa.i, %for.end.i.mlx5i_grp_sw_update_stats.exit_crit_edge ]
  %s.sroa.0.0.lcssa.i = phi i64 [ 0, %entry.mlx5i_grp_sw_update_stats.exit_crit_edge ], [ %add.i, %for.end.i.mlx5i_grp_sw_update_stats.exit_crit_edge ]
  %stats1 = getelementptr i8, ptr %dev, i32 11404
  %18 = getelementptr i8, ptr %dev, i32 11436
  %19 = call ptr @memset(ptr %18, i32 0, i32 160)
  %20 = ptrtoint ptr %stats1 to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %s.sroa.0.0.lcssa.i, ptr %stats1, align 16
  %rx_bytes25.i = getelementptr i8, ptr %dev, i32 11412
  %21 = ptrtoint ptr %rx_bytes25.i to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %s.sroa.9.0.lcssa.i, ptr %rx_bytes25.i, align 8
  %tx_packets29.i = getelementptr i8, ptr %dev, i32 11420
  %22 = ptrtoint ptr %tx_packets29.i to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %s.sroa.6.0.lcssa.i, ptr %tx_packets29.i, align 16
  %tx_bytes33.i = getelementptr i8, ptr %dev, i32 11428
  %23 = ptrtoint ptr %tx_bytes33.i to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %s.sroa.12.0.lcssa.i, ptr %tx_bytes33.i, align 8
  %tx_queue_dropped.i = getelementptr i8, ptr %dev, i32 11732
  %24 = ptrtoint ptr %tx_queue_dropped.i to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %s.sroa.1549.0.lcssa.i, ptr %tx_queue_dropped.i, align 8
  %25 = ptrtoint ptr %stats to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %s.sroa.0.0.lcssa.i, ptr %stats, align 8
  %26 = load i64, ptr %rx_bytes25.i, align 8
  %rx_bytes3 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 2
  %27 = ptrtoint ptr %rx_bytes3 to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %26, ptr %rx_bytes3, align 8
  %28 = load i64, ptr %tx_packets29.i, align 8
  %tx_packets4 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 1
  %29 = ptrtoint ptr %tx_packets4 to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %28, ptr %tx_packets4, align 8
  %30 = load i64, ptr %tx_bytes33.i, align 8
  %tx_bytes5 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 3
  %31 = ptrtoint ptr %tx_bytes5 to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %30, ptr %tx_bytes5, align 8
  %32 = load i64, ptr %tx_queue_dropped.i, align 8
  %tx_dropped = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 7
  %33 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %32, ptr %tx_dropped, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5i_init_underlay_qp(ptr nocapture noundef readonly %priv) local_unnamed_addr #0 align 64 {
entry:
  %in = alloca [68 x i32], align 4
  %_out = alloca [4 x i32], align 4
  %in81 = alloca [68 x i32], align 4
  %_out113 = alloca [4 x i32], align 4
  %in125 = alloca [68 x i32], align 4
  %_out157 = alloca [4 x i32], align 4
  %in169 = alloca [4 x i32], align 4
  %_out201 = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mdev1 = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %0 = ptrtoint ptr %mdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev1, align 64
  %ppriv = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 43
  %2 = ptrtoint ptr %ppriv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ppriv, align 32
  call void @llvm.lifetime.start.p0(i64 272, ptr nonnull %in) #9
  %4 = getelementptr inbounds i8, ptr %in, i32 4
  %5 = call ptr @memset(ptr %4, i32 0, i32 268)
  %add.ptr = getelementptr inbounds i8, ptr %in, i32 24
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 6144, ptr %add.ptr, align 4
  %pkey_index = getelementptr inbounds %struct.mlx5i_priv, ptr %3, i32 0, i32 4
  %7 = ptrtoint ptr %pkey_index to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %pkey_index, align 4
  %conv = zext i16 %8 to i32
  %add.ptr13 = getelementptr inbounds i8, ptr %in, i32 48
  %9 = ptrtoint ptr %add.ptr13 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv, ptr %add.ptr13, align 4
  %add.ptr26 = getelementptr inbounds i8, ptr %in, i32 84
  %10 = ptrtoint ptr %add.ptr26 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 65536, ptr %add.ptr26, align 4
  %add.ptr39 = getelementptr inbounds i8, ptr %in, i32 192
  %11 = ptrtoint ptr %add.ptr39 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 2843, ptr %add.ptr39, align 4
  %12 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 84017152, ptr %in, align 4
  %qpn = getelementptr inbounds %struct.mlx5i_priv, ptr %3, i32 0, i32 1
  %13 = ptrtoint ptr %qpn to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %qpn, align 4
  %add.ptr68 = getelementptr inbounds i32, ptr %in, i32 2
  %and70 = and i32 %14, 16777215
  %15 = ptrtoint ptr %add.ptr68 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %and70, ptr %add.ptr68, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_out) #9
  %16 = call ptr @memset(ptr %_out, i32 0, i32 16)
  %call = call i32 @mlx5_cmd_exec(ptr noundef %1, ptr noundef nonnull %in, i32 noundef 272, ptr noundef nonnull %_out, i32 noundef 16) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_out) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  call void @llvm.lifetime.end.p0(i64 272, ptr nonnull %in) #9
  br i1 %tobool.not, label %cleanup.cont, label %entry.err_qp_modify_to_err_crit_edge

entry.err_qp_modify_to_err_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_qp_modify_to_err

cleanup.cont:                                     ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 272, ptr nonnull %in81) #9
  %17 = getelementptr inbounds i8, ptr %in81, i32 4
  %18 = call ptr @memset(ptr %17, i32 0, i32 268)
  %19 = ptrtoint ptr %in81 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 84082688, ptr %in81, align 4
  %20 = ptrtoint ptr %qpn to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %qpn, align 4
  %add.ptr104 = getelementptr inbounds i32, ptr %in81, i32 2
  %and106 = and i32 %21, 16777215
  %22 = ptrtoint ptr %add.ptr104 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %and106, ptr %add.ptr104, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_out113) #9
  %23 = call ptr @memset(ptr %_out113, i32 0, i32 16)
  %call118 = call i32 @mlx5_cmd_exec(ptr noundef %1, ptr noundef nonnull %in81, i32 noundef 272, ptr noundef nonnull %_out113, i32 noundef 16) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_out113) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call118)
  %tobool119.not = icmp eq i32 %call118, 0
  call void @llvm.lifetime.end.p0(i64 272, ptr nonnull %in81) #9
  br i1 %tobool119.not, label %cleanup.cont124, label %cleanup.cont.err_qp_modify_to_err_crit_edge

cleanup.cont.err_qp_modify_to_err_crit_edge:      ; preds = %cleanup.cont
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_qp_modify_to_err

cleanup.cont124:                                  ; preds = %cleanup.cont
  call void @llvm.lifetime.start.p0(i64 272, ptr nonnull %in125) #9
  %24 = getelementptr inbounds i8, ptr %in125, i32 4
  %25 = call ptr @memset(ptr %24, i32 0, i32 268)
  %26 = ptrtoint ptr %in125 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 84148224, ptr %in125, align 4
  %27 = ptrtoint ptr %qpn to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %qpn, align 4
  %add.ptr148 = getelementptr inbounds i32, ptr %in125, i32 2
  %and150 = and i32 %28, 16777215
  %29 = ptrtoint ptr %add.ptr148 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %and150, ptr %add.ptr148, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_out157) #9
  %30 = call ptr @memset(ptr %_out157, i32 0, i32 16)
  %call162 = call i32 @mlx5_cmd_exec(ptr noundef %1, ptr noundef nonnull %in125, i32 noundef 272, ptr noundef nonnull %_out157, i32 noundef 16) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_out157) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call162)
  %tobool163.not.not = icmp eq i32 %call162, 0
  call void @llvm.lifetime.end.p0(i64 272, ptr nonnull %in125) #9
  br i1 %tobool163.not.not, label %cleanup.cont124.cleanup207_crit_edge, label %cleanup.cont124.err_qp_modify_to_err_crit_edge

cleanup.cont124.err_qp_modify_to_err_crit_edge:   ; preds = %cleanup.cont124
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_qp_modify_to_err

cleanup.cont124.cleanup207_crit_edge:             ; preds = %cleanup.cont124
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup207

err_qp_modify_to_err:                             ; preds = %cleanup.cont124.err_qp_modify_to_err_crit_edge, %cleanup.cont.err_qp_modify_to_err_crit_edge, %entry.err_qp_modify_to_err_crit_edge
  %ret.0 = phi i32 [ %call, %entry.err_qp_modify_to_err_crit_edge ], [ %call118, %cleanup.cont.err_qp_modify_to_err_crit_edge ], [ %call162, %cleanup.cont124.err_qp_modify_to_err_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %in169) #9
  %31 = getelementptr inbounds i8, ptr %in169, i32 4
  %32 = call ptr @memset(ptr %31, i32 0, i32 12)
  %33 = ptrtoint ptr %in169 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 84344832, ptr %in169, align 4
  %34 = ptrtoint ptr %qpn to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %qpn, align 4
  %add.ptr192 = getelementptr inbounds i32, ptr %in169, i32 2
  %and194 = and i32 %35, 16777215
  %36 = ptrtoint ptr %add.ptr192 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %and194, ptr %add.ptr192, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_out201) #9
  %37 = call ptr @memset(ptr %_out201, i32 0, i32 16)
  %call206 = call i32 @mlx5_cmd_exec(ptr noundef %1, ptr noundef nonnull %in169, i32 noundef 16, ptr noundef nonnull %_out201, i32 noundef 16) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_out201) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in169) #9
  br label %cleanup207

cleanup207:                                       ; preds = %err_qp_modify_to_err, %cleanup.cont124.cleanup207_crit_edge
  %retval.0 = phi i32 [ %ret.0, %err_qp_modify_to_err ], [ 0, %cleanup.cont124.cleanup207_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_cmd_exec(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5i_uninit_underlay_qp(ptr nocapture noundef readonly %priv) local_unnamed_addr #0 align 64 {
entry:
  %in = alloca [4 x i32], align 4
  %_out = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ppriv = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 43
  %0 = ptrtoint ptr %ppriv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ppriv, align 32
  %mdev1 = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %2 = ptrtoint ptr %mdev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mdev1, align 64
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %in) #9
  %4 = getelementptr inbounds i8, ptr %in, i32 4
  %5 = call ptr @memset(ptr %4, i32 0, i32 12)
  %6 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 84541440, ptr %in, align 4
  %qpn = getelementptr inbounds %struct.mlx5i_priv, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %qpn to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %qpn, align 4
  %add.ptr14 = getelementptr inbounds i32, ptr %in, i32 2
  %and16 = and i32 %8, 16777215
  %9 = ptrtoint ptr %add.ptr14 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %and16, ptr %add.ptr14, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_out) #9
  %10 = call ptr @memset(ptr %_out, i32 0, i32 16)
  %call = call i32 @mlx5_cmd_exec(ptr noundef %3, ptr noundef nonnull %in, i32 noundef 16, ptr noundef nonnull %_out, i32 noundef 16) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_out) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5i_create_underlay_qp(ptr nocapture noundef readonly %priv) local_unnamed_addr #0 align 64 {
entry:
  %out = alloca [4 x i32], align 4
  %in = alloca [68 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 22
  %0 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev, align 4
  %dev_addr1 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 86
  %2 = ptrtoint ptr %dev_addr1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_addr1, align 64
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %out) #9
  %4 = call ptr @memset(ptr %out, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 272, ptr nonnull %in) #9
  %5 = call ptr @memset(ptr %in, i32 0, i32 272)
  %ppriv = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 43
  %6 = ptrtoint ptr %ppriv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ppriv, align 32
  %mdev = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %8 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mdev, align 64
  %caps = getelementptr inbounds %struct.mlx5_core_dev, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %caps, align 8
  %add.ptr = getelementptr i32, ptr %11, i32 19
  %12 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr, align 4
  %14 = and i32 %13, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not = icmp eq i32 %14, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx2 = getelementptr i8, ptr %3, i32 1
  %15 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx2, align 1
  %conv = zext i8 %16 to i32
  %shl = shl nuw nsw i32 %conv, 16
  %arrayidx3 = getelementptr i8, ptr %3, i32 2
  %17 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx3, align 1
  %conv4 = zext i8 %18 to i32
  %shl5 = shl nuw nsw i32 %conv4, 8
  %add = or i32 %shl5, %shl
  %arrayidx6 = getelementptr i8, ptr %3, i32 3
  %19 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx6, align 1
  %conv7 = zext i8 %20 to i32
  %add8 = or i32 %add, %conv7
  %add.ptr11 = getelementptr inbounds i32, ptr %in, i32 2
  %21 = ptrtoint ptr %add.ptr11 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %add.ptr11, align 4
  %and12 = and i32 %22, -16777216
  %or = or i32 %add8, %and12
  store i32 %or, ptr %add.ptr11, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %add.ptr20 = getelementptr inbounds i8, ptr %in, i32 24
  %arrayidx.i = getelementptr %struct.mlx5_core_dev, ptr %9, i32 0, i32 8, i32 0, i32 4
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx.i, align 8
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 4
  %and.i = and i32 %26, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i.not = icmp eq i32 %and.i, 0
  %add.ptr27 = getelementptr inbounds i8, ptr %in, i32 32
  %27 = ptrtoint ptr %add.ptr27 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %add.ptr27, align 4
  %and28 = and i32 %28, -208
  %and29 = select i1 %tobool.not.i.not, i32 0, i32 64
  %or31 = or i32 %and29, %and28
  %29 = ptrtoint ptr %add.ptr20 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %add.ptr20, align 4
  %and41 = and i32 %30, -16717825
  %or57 = or i32 %and41, 137216
  store i32 %or57, ptr %add.ptr20, align 4
  %or70 = or i32 %or31, 2
  store i32 %or70, ptr %add.ptr27, align 4
  %add.ptr80 = getelementptr inbounds i8, ptr %in, i32 84
  %31 = ptrtoint ptr %add.ptr80 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %add.ptr80, align 4
  %and81 = and i32 %32, -16711681
  %or84 = or i32 %and81, 65536
  store i32 %or84, ptr %add.ptr80, align 4
  %add.ptr93 = getelementptr inbounds i8, ptr %in, i32 52
  %33 = ptrtoint ptr %add.ptr93 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %add.ptr93, align 4
  %or97 = or i32 %34, 8388608
  store i32 %or97, ptr %add.ptr93, align 4
  %35 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %in, align 4
  %and108 = and i32 %36, 65535
  %or111 = or i32 %and108, 83886080
  store i32 %or111, ptr %in, align 4
  %call119 = call i32 @mlx5_cmd_exec(ptr noundef %9, ptr noundef nonnull %in, i32 noundef 272, ptr noundef nonnull %out, i32 noundef 16) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call119)
  %tobool120.not = icmp eq i32 %call119, 0
  br i1 %tobool120.not, label %if.end122, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end122:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr124 = getelementptr inbounds i32, ptr %out, i32 2
  %37 = ptrtoint ptr %add.ptr124 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %add.ptr124, align 4
  %and126 = and i32 %38, 16777215
  %qpn127 = getelementptr inbounds %struct.mlx5i_priv, ptr %7, i32 0, i32 1
  %39 = ptrtoint ptr %qpn127 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %and126, ptr %qpn127, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end122, %if.end.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 272, ptr nonnull %in) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %out) #9
  ret i32 %call119
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5i_destroy_underlay_qp(ptr noundef %mdev, i32 noundef %qpn) local_unnamed_addr #0 align 64 {
entry:
  %in = alloca [4 x i32], align 4
  %_out = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %in) #9
  %0 = getelementptr inbounds i8, ptr %in, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 12)
  %2 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 83951616, ptr %in, align 4
  %add.ptr13 = getelementptr inbounds i32, ptr %in, i32 2
  %and15 = and i32 %qpn, 16777215
  %3 = ptrtoint ptr %add.ptr13 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %and15, ptr %add.ptr13, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_out) #9
  %4 = call ptr @memset(ptr %_out, i32 0, i32 16)
  %call = call i32 @mlx5_cmd_exec(ptr noundef %mdev, ptr noundef nonnull %in, i32 noundef 16, ptr noundef nonnull %_out, i32 noundef 16) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_out) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5i_update_nic_rx(ptr noundef %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mlx5e_refresh_tirs(ptr noundef %priv, i1 noundef zeroext true, i1 noundef zeroext true) #9
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_refresh_tirs(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5i_create_tis(ptr noundef %mdev, i32 noundef %underlay_qpn, ptr noundef %tisn) local_unnamed_addr #0 align 64 {
entry:
  %in = alloca [48 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %in) #9
  %0 = call ptr @memset(ptr %in, i32 0, i32 192)
  %add.ptr2 = getelementptr inbounds i8, ptr %in, i32 72
  %and3 = and i32 %underlay_qpn, 16777215
  %1 = ptrtoint ptr %add.ptr2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %and3, ptr %add.ptr2, align 4
  %call = call i32 @mlx5e_create_tis(ptr noundef %mdev, ptr noundef nonnull %in, ptr noundef %tisn) #9
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %in) #9
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_create_tis(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5i_dev_init(ptr noundef %dev) #0 align 64 {
entry:
  %addr_mod = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ppriv = getelementptr i8, ptr %dev, i32 30300
  %0 = ptrtoint ptr %ppriv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ppriv, align 32
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %addr_mod) #9
  %2 = getelementptr inbounds [3 x i8], ptr %addr_mod, i32 0, i32 1
  %3 = getelementptr inbounds [3 x i8], ptr %addr_mod, i32 0, i32 2
  %qpn = getelementptr inbounds %struct.mlx5i_priv, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %qpn to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %qpn, align 4
  %shr = lshr i32 %5, 16
  %conv = trunc i32 %shr to i8
  %6 = ptrtoint ptr %addr_mod to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv, ptr %addr_mod, align 1
  %shr2 = lshr i32 %5, 8
  %conv4 = trunc i32 %shr2 to i8
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv4, ptr %2, align 1
  %conv8 = trunc i32 %5 to i8
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv8, ptr %3, align 1
  call void @dev_addr_mod(ptr noundef %dev, i32 noundef 1, ptr noundef nonnull %addr_mod, i32 noundef 3) #9
  %9 = ptrtoint ptr %qpn to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %qpn, align 4
  %call12 = call i32 @mlx5i_pkey_add_qpn(ptr noundef %dev, i32 noundef %10) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %addr_mod) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5i_pkey_add_qpn(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5i_ioctl(ptr noundef %dev, ptr noundef %ifr, i32 noundef %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mlx5e_priv = getelementptr i8, ptr %dev, i32 2364
  %0 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %entry.cleanup_crit_edge [
    i32 35248, label %sw.bb
    i32 35249, label %sw.bb2
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call1 = tail call i32 @mlx5e_hwstamp_set(ptr noundef %mlx5e_priv, ptr noundef %ifr) #9
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call3 = tail call i32 @mlx5e_hwstamp_get(ptr noundef %mlx5e_priv, ptr noundef %ifr) #9
  br label %cleanup

cleanup:                                          ; preds = %sw.bb2, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %sw.bb2 ], [ %call1, %sw.bb ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_hwstamp_set(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_hwstamp_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5i_dev_cleanup(ptr noundef %dev) #0 align 64 {
entry:
  %in.i = alloca [4 x i32], align 4
  %_out.i = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ppriv = getelementptr i8, ptr %dev, i32 30300
  %0 = ptrtoint ptr %ppriv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ppriv, align 32
  %mdev1.i = getelementptr i8, ptr %dev, i32 11388
  %2 = ptrtoint ptr %mdev1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mdev1.i, align 64
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %in.i) #9
  %4 = getelementptr inbounds i8, ptr %in.i, i32 4
  %5 = call ptr @memset(ptr %4, i32 0, i32 12)
  %6 = ptrtoint ptr %in.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 84541440, ptr %in.i, align 4
  %qpn.i = getelementptr inbounds %struct.mlx5i_priv, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %qpn.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %qpn.i, align 4
  %add.ptr14.i = getelementptr inbounds i32, ptr %in.i, i32 2
  %and16.i = and i32 %8, 16777215
  %9 = ptrtoint ptr %add.ptr14.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %and16.i, ptr %add.ptr14.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_out.i) #9
  %10 = call ptr @memset(ptr %_out.i, i32 0, i32 16)
  %call.i = call i32 @mlx5_cmd_exec(ptr noundef %3, ptr noundef nonnull %in.i, i32 noundef 16, ptr noundef nonnull %_out.i, i32 noundef 16) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_out.i) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in.i) #9
  %11 = ptrtoint ptr %qpn.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %qpn.i, align 4
  %call1 = call i32 @mlx5i_pkey_del_qpn(ptr noundef %dev, i32 noundef %12) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5i_pkey_del_qpn(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_rdma_rn_get_params(ptr noundef %mdev, ptr nocapture readnone %device, ptr nocapture noundef writeonly %params) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %caps.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 8
  %0 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %caps.i, align 8
  %add.ptr.i = getelementptr i32, ptr %1, i32 13
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr.i, align 4
  %4 = and i32 %3, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.not.i = icmp eq i32 %4, 0
  br i1 %cmp.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %add.ptr6.i = getelementptr i32, ptr %1, i32 16
  %5 = ptrtoint ptr %add.ptr6.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %add.ptr6.i, align 4
  %7 = and i32 %6, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %do.end.i, label %if.end

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mdev, align 8
  %10 = tail call i32 @llvm.read_register.i32(metadata !70) #9
  %and.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %task.i, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 68
  %14 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pid.i, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %9, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef 661, i32 noundef %15) #12
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @elfcorehdr_addr to i32))
  %16 = load i64, ptr @elfcorehdr_addr, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %16)
  %cmp.i.not.i = icmp eq i64 %16, -1
  br i1 %cmp.i.not.i, label %cond.false.i, label %if.end.mlx5e_get_max_num_channels.exit_crit_edge

if.end.mlx5e_get_max_num_channels.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %mlx5e_get_max_num_channels.exit

cond.false.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call1.i = tail call i32 @mlx5_comp_vectors_count(ptr noundef %mdev) #9
  %17 = tail call i32 @llvm.smin.i32(i32 %call1.i, i32 128) #9
  br label %mlx5e_get_max_num_channels.exit

mlx5e_get_max_num_channels.exit:                  ; preds = %cond.false.i, %if.end.mlx5e_get_max_num_channels.exit_crit_edge
  %cond5.i = phi i32 [ %17, %cond.false.i ], [ 1, %if.end.mlx5e_get_max_num_channels.exit_crit_edge ]
  %mul = shl i32 %cond5.i, 3
  %18 = ptrtoint ptr %params to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 29116, ptr %params, align 4
  %.compoundliteral.sroa.2.0..sroa_idx = getelementptr inbounds i8, ptr %params, i32 4
  %19 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %mul, ptr %.compoundliteral.sroa.2.0..sroa_idx, align 4
  %.compoundliteral.sroa.3.0..sroa_idx = getelementptr inbounds i8, ptr %params, i32 8
  %20 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %cond5.i, ptr %.compoundliteral.sroa.3.0..sroa_idx, align 4
  %.compoundliteral.sroa.4.0..sroa_idx = getelementptr inbounds i8, ptr %params, i32 12
  %21 = ptrtoint ptr %.compoundliteral.sroa.4.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %mdev, ptr %.compoundliteral.sroa.4.0..sroa_idx, align 4
  %.compoundliteral.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %params, i32 16
  %22 = ptrtoint ptr %.compoundliteral.sroa.5.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @mlx5_rdma_setup_rn, ptr %.compoundliteral.sroa.5.0..sroa_idx, align 4
  br label %cleanup

cleanup:                                          ; preds = %mlx5e_get_max_num_channels.exit, %do.end.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %mlx5e_get_max_num_channels.exit ], [ -95, %do.end.i ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5_rdma_setup_rn(ptr noundef %ibdev, i32 noundef %port_num, ptr noundef %netdev, ptr noundef %param) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mlx5e_res.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %param, i32 0, i32 20
  %0 = ptrtoint ptr %mlx5e_res.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mlx5e_res.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i.not.i = icmp eq i32 %1, 0
  br i1 %cmp.i.not.i, label %mlx5_get_profile.exit.thread, label %mlx5_get_profile.exit

mlx5_get_profile.exit.thread:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i71 = getelementptr i8, ptr %netdev, i32 2304
  %mlx5e_priv72 = getelementptr i8, ptr %netdev, i32 2364
  %sub_interface74 = getelementptr i8, ptr %netdev, i32 2348
  %2 = ptrtoint ptr %sub_interface74 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %sub_interface74, align 4
  br label %if.then

mlx5_get_profile.exit:                            ; preds = %entry
  %call1.i = tail call ptr @mlx5i_pkey_get_profile() #9
  %3 = ptrtoint ptr %mlx5e_res.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pr = load i32, ptr %mlx5e_res.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %mlx5e_priv = getelementptr i8, ptr %netdev, i32 2364
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp.i = icmp ne i32 %.pr, 0
  %sub_interface = getelementptr i8, ptr %netdev, i32 2348
  %frombool = zext i1 %cmp.i to i8
  %4 = ptrtoint ptr %sub_interface to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %frombool, ptr %sub_interface, align 4
  br i1 %cmp.i, label %mlx5_get_profile.exit.if.end13_crit_edge, label %mlx5_get_profile.exit.if.then_crit_edge

mlx5_get_profile.exit.if.then_crit_edge:          ; preds = %mlx5_get_profile.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

mlx5_get_profile.exit.if.end13_crit_edge:         ; preds = %mlx5_get_profile.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.then:                                          ; preds = %mlx5_get_profile.exit.if.then_crit_edge, %mlx5_get_profile.exit.thread
  %sub_interface82 = phi ptr [ %sub_interface74, %mlx5_get_profile.exit.thread ], [ %sub_interface, %mlx5_get_profile.exit.if.then_crit_edge ]
  %mlx5e_priv80 = phi ptr [ %mlx5e_priv72, %mlx5_get_profile.exit.thread ], [ %mlx5e_priv, %mlx5_get_profile.exit.if.then_crit_edge ]
  %add.ptr.i78 = phi ptr [ %add.ptr.i71, %mlx5_get_profile.exit.thread ], [ %add.ptr.i, %mlx5_get_profile.exit.if.then_crit_edge ]
  %retval.0.i76 = phi ptr [ @mlx5i_nic_profile, %mlx5_get_profile.exit.thread ], [ %call1.i, %mlx5_get_profile.exit.if.then_crit_edge ]
  %call5 = tail call i32 @mlx5i_pkey_qpn_ht_init(ptr noundef %netdev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end, label %do.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %param, align 8
  %7 = tail call i32 @llvm.read_register.i32(metadata !70) #9
  %and.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 68
  %11 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %6, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef 713, i32 noundef %12) #12
  br label %cleanup28

if.end:                                           ; preds = %if.then
  %call9 = tail call i32 @mlx5e_create_mdev_resources(ptr noundef %param) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end.if.end13_crit_edge, label %if.end.destroy_ht_crit_edge

if.end.destroy_ht_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %destroy_ht

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.end13:                                         ; preds = %if.end.if.end13_crit_edge, %mlx5_get_profile.exit.if.end13_crit_edge
  %sub_interface83 = phi ptr [ %sub_interface82, %if.end.if.end13_crit_edge ], [ %sub_interface, %mlx5_get_profile.exit.if.end13_crit_edge ]
  %mlx5e_priv81 = phi ptr [ %mlx5e_priv80, %if.end.if.end13_crit_edge ], [ %mlx5e_priv, %mlx5_get_profile.exit.if.end13_crit_edge ]
  %add.ptr.i79 = phi ptr [ %add.ptr.i78, %if.end.if.end13_crit_edge ], [ %add.ptr.i, %mlx5_get_profile.exit.if.end13_crit_edge ]
  %retval.0.i77 = phi ptr [ %retval.0.i76, %if.end.if.end13_crit_edge ], [ %call1.i, %mlx5_get_profile.exit.if.end13_crit_edge ]
  %call14 = tail call i32 @mlx5e_priv_init(ptr noundef %mlx5e_priv81, ptr noundef %retval.0.i77, ptr noundef %netdev, ptr noundef %param) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end13.destroy_mdev_resources_crit_edge

if.end13.destroy_mdev_resources_crit_edge:        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %destroy_mdev_resources

if.end17:                                         ; preds = %if.end13
  %profile = getelementptr inbounds %struct.mlx5i_priv, ptr %add.ptr.i79, i32 466, i32 0, i32 8
  %13 = ptrtoint ptr %profile to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %retval.0.i77, ptr %profile, align 4
  %ppriv = getelementptr inbounds %struct.mlx5i_priv, ptr %add.ptr.i79, i32 466, i32 0, i32 9
  %14 = ptrtoint ptr %ppriv to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %add.ptr.i79, ptr %ppriv, align 32
  %15 = ptrtoint ptr %retval.0.i77 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %retval.0.i77, align 4
  %call18 = tail call i32 %16(ptr noundef %param, ptr noundef %netdev) #9
  %call19 = tail call i32 @mlx5e_attach_netdev(ptr noundef %mlx5e_priv81) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %detach

if.end22:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @netif_carrier_off(ptr noundef %netdev) #9
  %hca = getelementptr inbounds %struct.rdma_netdev, ptr %add.ptr.i79, i32 0, i32 1
  %17 = ptrtoint ptr %hca to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %ibdev, ptr %hca, align 4
  %send = getelementptr inbounds %struct.rdma_netdev, ptr %add.ptr.i79, i32 0, i32 6
  %18 = ptrtoint ptr %send to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @mlx5i_xmit, ptr %send, align 4
  %attach_mcast = getelementptr inbounds %struct.rdma_netdev, ptr %add.ptr.i79, i32 0, i32 7
  %19 = ptrtoint ptr %attach_mcast to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @mlx5i_attach_mcast, ptr %attach_mcast, align 4
  %detach_mcast = getelementptr inbounds %struct.rdma_netdev, ptr %add.ptr.i79, i32 0, i32 8
  %20 = ptrtoint ptr %detach_mcast to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @mlx5i_detach_mcast, ptr %detach_mcast, align 4
  %set_id = getelementptr inbounds %struct.rdma_netdev, ptr %add.ptr.i79, i32 0, i32 5
  %21 = ptrtoint ptr %set_id to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @mlx5i_set_pkey_index, ptr %set_id, align 4
  %priv_destructor = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 125
  %22 = ptrtoint ptr %priv_destructor to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @mlx5_rdma_netdev_free, ptr %priv_destructor, align 4
  %needs_free_netdev = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 124
  %23 = ptrtoint ptr %needs_free_netdev to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %needs_free_netdev, align 8
  br label %cleanup28

detach:                                           ; preds = %if.end17
  %cleanup = getelementptr inbounds %struct.mlx5e_profile, ptr %retval.0.i77, i32 0, i32 1
  %24 = ptrtoint ptr %cleanup to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cleanup, align 4
  tail call void %25(ptr noundef %mlx5e_priv81) #9
  %26 = ptrtoint ptr %sub_interface83 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %sub_interface83, align 4, !range !80
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool25.not = icmp eq i8 %27, 0
  br i1 %tobool25.not, label %detach.destroy_mdev_resources_crit_edge, label %detach.cleanup28_crit_edge

detach.cleanup28_crit_edge:                       ; preds = %detach
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup28

detach.destroy_mdev_resources_crit_edge:          ; preds = %detach
  call void @__sanitizer_cov_trace_pc() #11
  br label %destroy_mdev_resources

destroy_mdev_resources:                           ; preds = %detach.destroy_mdev_resources_crit_edge, %if.end13.destroy_mdev_resources_crit_edge
  %err.0 = phi i32 [ %call14, %if.end13.destroy_mdev_resources_crit_edge ], [ %call19, %detach.destroy_mdev_resources_crit_edge ]
  tail call void @mlx5e_destroy_mdev_resources(ptr noundef %param) #9
  br label %destroy_ht

destroy_ht:                                       ; preds = %destroy_mdev_resources, %if.end.destroy_ht_crit_edge
  %err.1 = phi i32 [ %err.0, %destroy_mdev_resources ], [ %call9, %if.end.destroy_ht_crit_edge ]
  tail call void @mlx5i_pkey_qpn_ht_cleanup(ptr noundef %netdev) #9
  br label %cleanup28

cleanup28:                                        ; preds = %destroy_ht, %detach.cleanup28_crit_edge, %if.end22, %do.end
  %retval.0 = phi i32 [ %err.1, %destroy_ht ], [ 0, %if.end22 ], [ %call5, %do.end ], [ %call19, %detach.cleanup28_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_set_rq_type(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_init_rq_type_params(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5i_open(ptr noundef %netdev) #0 align 64 {
entry:
  %in.i = alloca [4 x i32], align 4
  %_out.i = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mlx5e_priv = getelementptr i8, ptr %netdev, i32 2364
  %ppriv = getelementptr i8, ptr %netdev, i32 30300
  %0 = ptrtoint ptr %ppriv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ppriv, align 32
  %mdev1 = getelementptr i8, ptr %netdev, i32 11388
  %2 = ptrtoint ptr %mdev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mdev1, align 64
  %state_lock = getelementptr i8, ptr %netdev, i32 2480
  tail call void @mutex_lock_nested(ptr noundef %state_lock, i32 noundef 0) #9
  %state = getelementptr i8, ptr %netdev, i32 2476
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state) #9
  %call2 = tail call i32 @mlx5i_init_underlay_qp(ptr noundef %mlx5e_priv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %6 = tail call i32 @llvm.read_register.i32(metadata !70) #9
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
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 534, i32 noundef %11, i32 noundef %call2) #12
  br label %err_clear_state_opened_flag

if.end:                                           ; preds = %entry
  %qpn = getelementptr inbounds %struct.mlx5i_priv, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %qpn to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %qpn, align 4
  %call4 = tail call i32 @mlx5_fs_add_rx_underlay_qpn(ptr noundef %3, i32 noundef %13) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end14, label %do.end9

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %3, align 8
  %16 = tail call i32 @llvm.read_register.i32(metadata !70) #9
  %and.i50 = and i32 %16, -16384
  %17 = inttoptr i32 %and.i50 to ptr
  %task12 = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %task12 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %task12, align 8
  %pid13 = getelementptr inbounds %struct.task_struct, ptr %19, i32 0, i32 68
  %20 = ptrtoint ptr %pid13 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pid13, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %15, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 540, i32 noundef %21, i32 noundef %call4) #12
  br label %err_reset_qp

if.end14:                                         ; preds = %if.end
  %channels = getelementptr i8, ptr %netdev, i32 6076
  %call15 = tail call i32 @mlx5e_open_channels(ptr noundef %mlx5e_priv, ptr noundef %channels) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %err_remove_fs_underlay_qp

if.end18:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  %profile = getelementptr i8, ptr %netdev, i32 30296
  %22 = ptrtoint ptr %profile to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %profile, align 4
  %update_rx = getelementptr inbounds %struct.mlx5e_profile, ptr %23, i32 0, i32 8
  %24 = ptrtoint ptr %update_rx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %update_rx, align 4
  %call19 = tail call i32 %25(ptr noundef %mlx5e_priv) #9
  tail call void @mlx5e_activate_priv_channels(ptr noundef %mlx5e_priv) #9
  tail call void @mutex_unlock(ptr noundef %state_lock) #9
  br label %cleanup

err_remove_fs_underlay_qp:                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %qpn to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %qpn, align 4
  %call22 = tail call i32 @mlx5_fs_remove_rx_underlay_qpn(ptr noundef %3, i32 noundef %27) #9
  br label %err_reset_qp

err_reset_qp:                                     ; preds = %err_remove_fs_underlay_qp, %do.end9
  %err.0 = phi i32 [ %call4, %do.end9 ], [ %call15, %err_remove_fs_underlay_qp ]
  %28 = ptrtoint ptr %ppriv to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ppriv, align 32
  %30 = ptrtoint ptr %mdev1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mdev1, align 64
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %in.i) #9
  %32 = getelementptr inbounds i8, ptr %in.i, i32 4
  %33 = call ptr @memset(ptr %32, i32 0, i32 12)
  %34 = ptrtoint ptr %in.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 84541440, ptr %in.i, align 4
  %qpn.i = getelementptr inbounds %struct.mlx5i_priv, ptr %29, i32 0, i32 1
  %35 = ptrtoint ptr %qpn.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %qpn.i, align 4
  %add.ptr14.i = getelementptr inbounds i32, ptr %in.i, i32 2
  %and16.i = and i32 %36, 16777215
  %37 = ptrtoint ptr %add.ptr14.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %and16.i, ptr %add.ptr14.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_out.i) #9
  %38 = call ptr @memset(ptr %_out.i, i32 0, i32 16)
  %call.i = call i32 @mlx5_cmd_exec(ptr noundef %31, ptr noundef nonnull %in.i, i32 noundef 16, ptr noundef nonnull %_out.i, i32 noundef 16) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_out.i) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in.i) #9
  br label %err_clear_state_opened_flag

err_clear_state_opened_flag:                      ; preds = %err_reset_qp, %do.end
  %err.1 = phi i32 [ %call2, %do.end ], [ %err.0, %err_reset_qp ]
  call void @_clear_bit(i32 noundef 0, ptr noundef %state) #9
  call void @mutex_unlock(ptr noundef %state_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %err_clear_state_opened_flag, %if.end18
  %retval.0 = phi i32 [ %err.1, %err_clear_state_opened_flag ], [ 0, %if.end18 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5i_close(ptr noundef %netdev) #0 align 64 {
entry:
  %in.i = alloca [4 x i32], align 4
  %_out.i = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ppriv = getelementptr i8, ptr %netdev, i32 30300
  %0 = ptrtoint ptr %ppriv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ppriv, align 32
  %mdev1 = getelementptr i8, ptr %netdev, i32 11388
  %2 = ptrtoint ptr %mdev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mdev1, align 64
  %state_lock = getelementptr i8, ptr %netdev, i32 2480
  tail call void @mutex_lock_nested(ptr noundef %state_lock, i32 noundef 0) #9
  %state = getelementptr i8, ptr %netdev, i32 2476
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state, align 4
  %and1.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %entry.unlock_crit_edge, label %if.end

entry.unlock_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %mlx5e_priv = getelementptr i8, ptr %netdev, i32 2364
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state) #9
  %netdev4 = getelementptr i8, ptr %netdev, i32 11392
  %6 = ptrtoint ptr %netdev4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %netdev4, align 4
  tail call void @netif_carrier_off(ptr noundef %7) #9
  %qpn = getelementptr inbounds %struct.mlx5i_priv, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %qpn to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %qpn, align 4
  %call5 = tail call i32 @mlx5_fs_remove_rx_underlay_qpn(ptr noundef %3, i32 noundef %9) #9
  tail call void @mlx5e_deactivate_priv_channels(ptr noundef %mlx5e_priv) #9
  %channels = getelementptr i8, ptr %netdev, i32 6076
  tail call void @mlx5e_close_channels(ptr noundef %channels) #9
  %10 = ptrtoint ptr %ppriv to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ppriv, align 32
  %12 = ptrtoint ptr %mdev1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mdev1, align 64
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %in.i) #9
  %14 = getelementptr inbounds i8, ptr %in.i, i32 4
  %15 = call ptr @memset(ptr %14, i32 0, i32 12)
  %16 = ptrtoint ptr %in.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 84541440, ptr %in.i, align 4
  %qpn.i = getelementptr inbounds %struct.mlx5i_priv, ptr %11, i32 0, i32 1
  %17 = ptrtoint ptr %qpn.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %qpn.i, align 4
  %add.ptr14.i = getelementptr inbounds i32, ptr %in.i, i32 2
  %and16.i = and i32 %18, 16777215
  %19 = ptrtoint ptr %add.ptr14.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %and16.i, ptr %add.ptr14.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_out.i) #9
  %20 = call ptr @memset(ptr %_out.i, i32 0, i32 16)
  %call.i = call i32 @mlx5_cmd_exec(ptr noundef %13, ptr noundef nonnull %in.i, i32 noundef 16, ptr noundef nonnull %_out.i, i32 noundef 16) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_out.i) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in.i) #9
  br label %unlock

unlock:                                           ; preds = %if.end, %entry.unlock_crit_edge
  call void @mutex_unlock(ptr noundef %state_lock) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5i_change_mtu(ptr noundef %netdev, i32 noundef %new_mtu) #0 align 64 {
entry:
  %new_params = alloca %struct.mlx5e_params, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mlx5e_priv = getelementptr i8, ptr %netdev, i32 2364
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %new_params) #9
  %state_lock = getelementptr i8, ptr %netdev, i32 2480
  tail call void @mutex_lock_nested(ptr noundef %state_lock, i32 noundef 0) #9
  %params = getelementptr i8, ptr %netdev, i32 6088
  %0 = call ptr @memcpy(ptr %new_params, ptr %params, i32 144)
  %sw_mtu = getelementptr inbounds %struct.mlx5e_params, ptr %new_params, i32 0, i32 18
  %1 = ptrtoint ptr %sw_mtu to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %new_mtu, ptr %sw_mtu, align 4
  %call1 = call i32 @mlx5e_safe_switch_params(ptr noundef %mlx5e_priv, ptr noundef nonnull %new_params, ptr noundef null, ptr noundef null, i1 noundef zeroext true) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %sw_mtu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sw_mtu, align 4
  %mtu = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 20
  %4 = ptrtoint ptr %mtu to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %mtu, align 4
  br label %out

out:                                              ; preds = %if.end, %entry.out_crit_edge
  call void @mutex_unlock(ptr noundef %state_lock) #9
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %new_params) #9
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_fs_add_rx_underlay_qpn(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_open_channels(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_activate_priv_channels(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_fs_remove_rx_underlay_qpn(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_deactivate_priv_channels(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_close_channels(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_safe_switch_params(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_comp_vectors_count(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5i_pkey_qpn_ht_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_create_mdev_resources(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_priv_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_attach_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5i_xmit(ptr nocapture noundef readonly %dev, ptr noundef %skb, ptr noundef %address, i32 noundef %dqpn) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mlx5e_priv = getelementptr i8, ptr %dev, i32 2364
  %0 = ptrtoint ptr %mlx5e_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mlx5e_priv, align 128
  %queue_mapping.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 10
  %2 = ptrtoint ptr %queue_mapping.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %queue_mapping.i, align 8
  %idxprom = zext i16 %3 to i32
  %arrayidx = getelementptr ptr, ptr %1, i32 %idxprom
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %ppriv = getelementptr i8, ptr %dev, i32 30300
  %6 = ptrtoint ptr %ppriv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ppriv, align 32
  %av = getelementptr inbounds %struct.mlx5_ib_ah, ptr %address, i32 0, i32 1
  %qkey = getelementptr inbounds %struct.mlx5i_priv, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %qkey to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %qkey, align 4
  %10 = tail call i32 @llvm.read_register.i32(metadata !70) #9
  %and.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %13
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %15, ptrtoint (ptr getelementptr inbounds (%struct.softnet_data, ptr @softnet_data, i32 0, i32 11, i32 1) to i32)
  %16 = inttoptr i32 %add.i to ptr
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %16, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.i = icmp ne i8 %18, 0
  tail call void @mlx5i_sq_xmit(ptr noundef %5, ptr noundef %skb, ptr noundef %av, i32 noundef %dqpn, i32 noundef %9, i1 noundef zeroext %tobool.i) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5i_attach_mcast(ptr noundef %netdev, ptr nocapture noundef readnone %hca, ptr noundef %gid, i16 noundef zeroext %lid, i32 noundef %set_qkey, i32 noundef %qkey) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mdev1 = getelementptr i8, ptr %netdev, i32 11388
  %0 = ptrtoint ptr %mdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev1, align 64
  %ppriv = getelementptr i8, ptr %netdev, i32 30300
  %2 = ptrtoint ptr %ppriv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ppriv, align 32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5i_attach_mcast.__UNIQUE_ID_ddebug661, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5i_attach_mcast, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !81

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %6 = tail call i32 @llvm.read_register.i32(metadata !70) #9
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
  %qpn = getelementptr inbounds %struct.mlx5i_priv, ptr %3, i32 0, i32 1
  %12 = ptrtoint ptr %qpn to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %qpn, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlx5i_attach_mcast.__UNIQUE_ID_ddebug661, ptr noundef %5, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.24, i32 noundef 601, i32 noundef %11, i32 noundef %13, ptr noundef %gid) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %qpn7 = getelementptr inbounds %struct.mlx5i_priv, ptr %3, i32 0, i32 1
  %14 = ptrtoint ptr %qpn7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %qpn7, align 4
  %call8 = tail call i32 @mlx5_core_attach_mcg(ptr noundef %1, ptr noundef %gid, i32 noundef %15) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %do.end.if.end20_crit_edge, label %do.end13

do.end.if.end20_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

do.end13:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 8
  %18 = tail call i32 @llvm.read_register.i32(metadata !70) #9
  %and.i61 = and i32 %18, -16384
  %19 = inttoptr i32 %and.i61 to ptr
  %task16 = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %task16 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %task16, align 8
  %pid17 = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 68
  %22 = ptrtoint ptr %pid17 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pid17, align 8
  %24 = ptrtoint ptr %qpn7 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %qpn7, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %17, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.24, i32 noundef 605, i32 noundef %23, i32 noundef %25, ptr noundef %gid) #12
  br label %if.end20

if.end20:                                         ; preds = %do.end13, %do.end.if.end20_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %set_qkey)
  %tobool21.not = icmp eq i32 %set_qkey, 0
  br i1 %tobool21.not, label %if.end20.if.end45_crit_edge, label %do.body23

if.end20.if.end45_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45

do.body23:                                        ; preds = %if.end20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5i_attach_mcast.__UNIQUE_ID_ddebug662, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5i_attach_mcast, %if.then35)) #9
          to label %do.end43 [label %if.then35], !srcloc !81

if.then35:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 8
  %28 = tail call i32 @llvm.read_register.i32(metadata !70) #9
  %and.i62 = and i32 %28, -16384
  %29 = inttoptr i32 %and.i62 to ptr
  %task38 = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %task38 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %task38, align 8
  %pid39 = getelementptr inbounds %struct.task_struct, ptr %31, i32 0, i32 68
  %32 = ptrtoint ptr %pid39 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %pid39, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlx5i_attach_mcast.__UNIQUE_ID_ddebug662, ptr noundef %27, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.24, i32 noundef 609, i32 noundef %33, ptr noundef %netdev, i32 noundef %qkey) #9
  br label %do.end43

do.end43:                                         ; preds = %if.then35, %do.body23
  %qkey44 = getelementptr inbounds %struct.mlx5i_priv, ptr %3, i32 0, i32 3
  %34 = ptrtoint ptr %qkey44 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %qkey, ptr %qkey44, align 4
  br label %if.end45

if.end45:                                         ; preds = %do.end43, %if.end20.if.end45_crit_edge
  ret i32 %call8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5i_detach_mcast(ptr nocapture noundef readonly %netdev, ptr nocapture noundef readnone %hca, ptr noundef %gid, i16 noundef zeroext %lid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mdev1 = getelementptr i8, ptr %netdev, i32 11388
  %0 = ptrtoint ptr %mdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev1, align 64
  %ppriv = getelementptr i8, ptr %netdev, i32 30300
  %2 = ptrtoint ptr %ppriv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ppriv, align 32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5i_detach_mcast.__UNIQUE_ID_ddebug663, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5i_detach_mcast, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !81

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %6 = tail call i32 @llvm.read_register.i32(metadata !70) #9
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
  %qpn = getelementptr inbounds %struct.mlx5i_priv, ptr %3, i32 0, i32 1
  %12 = ptrtoint ptr %qpn to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %qpn, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlx5i_detach_mcast.__UNIQUE_ID_ddebug663, ptr noundef %5, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.28, i32 noundef 625, i32 noundef %11, i32 noundef %13, ptr noundef %gid) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %qpn7 = getelementptr inbounds %struct.mlx5i_priv, ptr %3, i32 0, i32 1
  %14 = ptrtoint ptr %qpn7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %qpn7, align 4
  %call8 = tail call i32 @mlx5_core_detach_mcg(ptr noundef %1, ptr noundef %gid, i32 noundef %15) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %do.end.if.end33_crit_edge, label %do.body11

do.end.if.end33_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33

do.body11:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5i_detach_mcast.__UNIQUE_ID_ddebug664, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5i_detach_mcast, %if.then23)) #9
          to label %if.end33 [label %if.then23], !srcloc !81

if.then23:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 8
  %18 = tail call i32 @llvm.read_register.i32(metadata !70) #9
  %and.i45 = and i32 %18, -16384
  %19 = inttoptr i32 %and.i45 to ptr
  %task26 = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %task26 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %task26, align 8
  %pid27 = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 68
  %22 = ptrtoint ptr %pid27 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pid27, align 8
  %24 = ptrtoint ptr %qpn7 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %qpn7, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlx5i_detach_mcast.__UNIQUE_ID_ddebug664, ptr noundef %17, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.28, i32 noundef 630, i32 noundef %23, i32 noundef %25, ptr noundef %gid) #9
  br label %if.end33

if.end33:                                         ; preds = %if.then23, %do.body11, %do.end.if.end33_crit_edge
  ret i32 %call8
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @mlx5i_set_pkey_index(ptr nocapture noundef writeonly %netdev, i32 noundef %id) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i32 %id to i16
  %pkey_index = getelementptr i8, ptr %netdev, i32 2356
  %0 = ptrtoint ptr %pkey_index to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 %conv, ptr %pkey_index, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx5_rdma_netdev_free(ptr noundef %netdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mlx5e_priv = getelementptr i8, ptr %netdev, i32 2364
  %mdev1 = getelementptr i8, ptr %netdev, i32 11388
  %0 = ptrtoint ptr %mdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev1, align 64
  %ppriv = getelementptr i8, ptr %netdev, i32 30300
  %2 = ptrtoint ptr %ppriv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ppriv, align 32
  %profile2 = getelementptr i8, ptr %netdev, i32 30296
  %4 = ptrtoint ptr %profile2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %profile2, align 4
  tail call void @mlx5e_detach_netdev(ptr noundef %mlx5e_priv) #9
  %cleanup = getelementptr inbounds %struct.mlx5e_profile, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %cleanup to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cleanup, align 4
  tail call void %7(ptr noundef %mlx5e_priv) #9
  %sub_interface = getelementptr inbounds %struct.mlx5i_priv, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %sub_interface to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %sub_interface, align 4, !range !80
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mlx5i_pkey_qpn_ht_cleanup(ptr noundef %netdev) #9
  tail call void @mlx5e_destroy_mdev_resources(ptr noundef %1) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_destroy_mdev_resources(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5i_pkey_qpn_ht_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5i_pkey_get_profile() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5i_init_rx(ptr noundef %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mdev1 = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %0 = ptrtoint ptr %mdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev1, align 64
  %call = tail call ptr @mlx5e_rx_res_alloc() #9
  %rx_res = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 11
  %2 = ptrtoint ptr %rx_res to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %rx_res, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @mlx5e_create_q_counters(ptr noundef %priv) #9
  %drop_rq = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 8
  %call3 = tail call i32 @mlx5e_open_drop_rq(ptr noundef %priv, ptr noundef %drop_rq) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end7, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 8
  %5 = tail call i32 @llvm.read_register.i32(metadata !70) #9
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
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i32 noundef 375, i32 noundef %10, i32 noundef %call3) #12
  br label %err_destroy_q_counters

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
  %call14 = tail call i32 @mlx5e_rx_res_init(ptr noundef %12, ptr noundef %14, i32 noundef 0, i32 noundef %conv, i32 noundef %18, ptr noundef %packet_merge, i32 noundef %conv13) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end7.err_close_drop_rq_crit_edge

if.end7.err_close_drop_rq_crit_edge:              ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_close_drop_rq

if.end17:                                         ; preds = %if.end7
  %21 = ptrtoint ptr %mdev1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mdev1, align 64
  %call.i = tail call ptr @mlx5_get_flow_namespace(ptr noundef %22, i32 noundef 4) #9
  %fs.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 13
  %23 = ptrtoint ptr %fs.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call.i, ptr %fs.i, align 4
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end17.err_destroy_rx_res_crit_edge, label %if.end.i

if.end17.err_destroy_rx_res_crit_edge:            ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_destroy_rx_res

if.end.i:                                         ; preds = %if.end17
  %call3.i = tail call i32 @mlx5e_arfs_create_tables(ptr noundef %priv) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.end.i.if.end7.i_crit_edge, label %if.then5.i

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %netdev.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 22
  %24 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %netdev.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %25, ptr noundef nonnull @.str.15, i32 noundef %call3.i) #12
  %26 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %netdev.i, align 4
  %hw_features.i = getelementptr inbounds %struct.net_device, ptr %27, i32 0, i32 24
  %28 = ptrtoint ptr %hw_features.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %hw_features.i, align 8
  %and.i48 = and i64 %29, -274877906945
  store i64 %and.i48, ptr %hw_features.i, align 8
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then5.i, %if.end.i.if.end7.i_crit_edge
  %call8.i = tail call i32 @mlx5e_create_ttc_table(ptr noundef %priv) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %mlx5i_create_flow_steering.exit, label %if.then10.i

if.then10.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  %netdev11.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 22
  %30 = ptrtoint ptr %netdev11.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %netdev11.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %31, ptr noundef nonnull @.str.16, i32 noundef %call8.i) #12
  tail call void @mlx5e_arfs_destroy_tables(ptr noundef %priv) #9
  br label %err_destroy_rx_res

mlx5i_create_flow_steering.exit:                  ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mlx5e_ethtool_init_steering(ptr noundef %priv) #9
  br label %cleanup

err_destroy_rx_res:                               ; preds = %if.then10.i, %if.end17.err_destroy_rx_res_crit_edge
  %retval.0.i.ph = phi i32 [ -22, %if.end17.err_destroy_rx_res_crit_edge ], [ %call8.i, %if.then10.i ]
  %32 = ptrtoint ptr %rx_res to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rx_res, align 4
  tail call void @mlx5e_rx_res_destroy(ptr noundef %33) #9
  br label %err_close_drop_rq

err_close_drop_rq:                                ; preds = %err_destroy_rx_res, %if.end7.err_close_drop_rq_crit_edge
  %err.0 = phi i32 [ %call14, %if.end7.err_close_drop_rq_crit_edge ], [ %retval.0.i.ph, %err_destroy_rx_res ]
  tail call void @mlx5e_close_drop_rq(ptr noundef %drop_rq) #9
  br label %err_destroy_q_counters

err_destroy_q_counters:                           ; preds = %err_close_drop_rq, %do.end
  %err.1 = phi i32 [ %call3, %do.end ], [ %err.0, %err_close_drop_rq ]
  tail call void @mlx5e_destroy_q_counters(ptr noundef %priv) #9
  %34 = ptrtoint ptr %rx_res to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %rx_res, align 4
  tail call void @mlx5e_rx_res_free(ptr noundef %35) #9
  %36 = ptrtoint ptr %rx_res to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %rx_res, align 4
  br label %cleanup

cleanup:                                          ; preds = %err_destroy_q_counters, %mlx5i_create_flow_steering.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %err_destroy_q_counters ], [ -12, %entry.cleanup_crit_edge ], [ 0, %mlx5i_create_flow_steering.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx5i_cleanup_rx(ptr noundef %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mlx5e_destroy_ttc_table(ptr noundef %priv) #9
  tail call void @mlx5e_arfs_destroy_tables(ptr noundef %priv) #9
  tail call void @mlx5e_ethtool_cleanup_steering(ptr noundef %priv) #9
  %rx_res = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 11
  %0 = ptrtoint ptr %rx_res to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx_res, align 4
  tail call void @mlx5e_rx_res_destroy(ptr noundef %1) #9
  %drop_rq = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 8
  tail call void @mlx5e_close_drop_rq(ptr noundef %drop_rq) #9
  tail call void @mlx5e_destroy_q_counters(ptr noundef %priv) #9
  %2 = ptrtoint ptr %rx_res to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rx_res, align 4
  tail call void @mlx5e_rx_res_free(ptr noundef %3) #9
  %4 = ptrtoint ptr %rx_res to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %rx_res, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5i_init_tx(ptr noundef %priv) #0 align 64 {
entry:
  %in.i32 = alloca [4 x i32], align 4
  %_out.i = alloca [4 x i32], align 4
  %in.i = alloca [48 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ppriv = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 43
  %0 = ptrtoint ptr %ppriv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ppriv, align 32
  %call = tail call i32 @mlx5i_create_underlay_qp(ptr noundef %priv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %mdev2 = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %2 = ptrtoint ptr %mdev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mdev2, align 64
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %6 = tail call i32 @llvm.read_register.i32(metadata !70) #9
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
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %5, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, i32 noundef 296, i32 noundef %11, i32 noundef %call) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %qpn = getelementptr inbounds %struct.mlx5i_priv, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %qpn to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %qpn, align 4
  %tisn = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 10
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %in.i) #9
  %14 = call ptr @memset(ptr %in.i, i32 0, i32 192)
  %add.ptr2.i = getelementptr inbounds i8, ptr %in.i, i32 72
  %and3.i = and i32 %13, 16777215
  %15 = ptrtoint ptr %add.ptr2.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %and3.i, ptr %add.ptr2.i, align 4
  %call.i = call i32 @mlx5e_create_tis(ptr noundef %3, ptr noundef nonnull %in.i, ptr noundef %tisn) #9
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %in.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool5.not = icmp eq i32 %call.i, 0
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %do.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %mdev2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mdev2, align 64
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 8
  %20 = call i32 @llvm.read_register.i32(metadata !70) #9
  %and.i31 = and i32 %20, -16384
  %21 = inttoptr i32 %and.i31 to ptr
  %task13 = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %task13 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %task13, align 8
  %pid14 = getelementptr inbounds %struct.task_struct, ptr %23, i32 0, i32 68
  %24 = ptrtoint ptr %pid14 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pid14, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %19, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.18, i32 noundef 302, i32 noundef %25, i32 noundef %call.i) #12
  %26 = ptrtoint ptr %mdev2 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mdev2, align 64
  %28 = ptrtoint ptr %qpn to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %qpn, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %in.i32) #9
  %30 = getelementptr inbounds i8, ptr %in.i32, i32 4
  %31 = call ptr @memset(ptr %30, i32 0, i32 12)
  %32 = ptrtoint ptr %in.i32 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 83951616, ptr %in.i32, align 4
  %add.ptr13.i = getelementptr inbounds i32, ptr %in.i32, i32 2
  %and15.i = and i32 %29, 16777215
  %33 = ptrtoint ptr %add.ptr13.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %and15.i, ptr %add.ptr13.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_out.i) #9
  %34 = call ptr @memset(ptr %_out.i, i32 0, i32 16)
  %call.i33 = call i32 @mlx5_cmd_exec(ptr noundef %27, ptr noundef nonnull %in.i32, i32 noundef 16, ptr noundef nonnull %_out.i, i32 noundef 16) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_out.i) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in.i32) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end9, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %call.i, %do.end9 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx5i_cleanup_tx(ptr nocapture noundef readonly %priv) #0 align 64 {
entry:
  %in.i = alloca [4 x i32], align 4
  %_out.i = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ppriv = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 43
  %0 = ptrtoint ptr %ppriv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ppriv, align 32
  %mdev = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %2 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mdev, align 64
  %tisn = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 10
  %4 = ptrtoint ptr %tisn to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tisn, align 4
  tail call void @mlx5e_destroy_tis(ptr noundef %3, i32 noundef %5) #9
  %6 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mdev, align 64
  %qpn = getelementptr inbounds %struct.mlx5i_priv, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %qpn to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %qpn, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %in.i) #9
  %10 = getelementptr inbounds i8, ptr %in.i, i32 4
  %11 = call ptr @memset(ptr %10, i32 0, i32 12)
  %12 = ptrtoint ptr %in.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 83951616, ptr %in.i, align 4
  %add.ptr13.i = getelementptr inbounds i32, ptr %in.i, i32 2
  %and15.i = and i32 %9, 16777215
  %13 = ptrtoint ptr %add.ptr13.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %and15.i, ptr %add.ptr13.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_out.i) #9
  %14 = call ptr @memset(ptr %_out.i, i32 0, i32 16)
  %call.i = call i32 @mlx5_cmd_exec(ptr noundef %7, ptr noundef nonnull %in.i, i32 noundef 16, ptr noundef nonnull %_out.i, i32 noundef 16) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_out.i) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in.i) #9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mlx5i_stats_grps_num(ptr nocapture noundef readnone %priv) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 13
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5e_rx_res_alloc() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_create_q_counters(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_open_drop_rq(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_rx_res_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_rx_res_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_close_drop_rq(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_destroy_q_counters(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_rx_res_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_get_flow_namespace(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_arfs_create_tables(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_create_ttc_table(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_ethtool_init_steering(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_arfs_destroy_tables(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_destroy_ttc_table(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_ethtool_cleanup_steering(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_destroy_tis(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5i_sq_xmit(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_core_attach_mcg(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_core_detach_mcg(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_detach_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

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

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !11, !12, !14, !15, !16, !18, !19, !20, !21, !23, !24, !25, !26, !28, !30, !31, !32, !33, !34, !36, !38, !40, !41, !42, !43, !45, !46, !47, !49, !51, !53, !54, !55, !56, !58, !59, !60, !62, !63, !65, !66, !67, !69}
!llvm.named.register.sp = !{!70}
!llvm.module.flags = !{!71, !72, !73, !74, !75, !76, !77, !78}
!llvm.ident = !{!79}

!0 = !{ptr @__ksymtab_mlx5_rdma_rn_get_params, !1, !"__ksymtab_mlx5_rdma_rn_get_params", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/ipoib/ipoib.c", i32 785, i32 1}
!2 = !{ptr @mlx5i_netdev_ops, !3, !"mlx5i_netdev_ops", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/ipoib/ipoib.c", i32 46, i32 36}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/ipoib/ipoib.c", i32 534, i32 3}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @mlx5i_open._entry, !5, !"_entry", i1 false, i1 false}
!11 = !{ptr @mlx5i_open._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/ipoib/ipoib.c", i32 540, i32 3}
!14 = !{ptr @mlx5i_open._entry.5, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @mlx5i_open._entry_ptr.7, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/ipoib/ipoib.c", i32 661, i32 3}
!18 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @mlx5i_check_required_hca_cap._entry, !17, !"_entry", i1 false, i1 false}
!20 = !{ptr @mlx5i_check_required_hca_cap._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/ipoib/ipoib.c", i32 713, i32 4}
!23 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @mlx5_rdma_setup_rn._entry, !22, !"_entry", i1 false, i1 false}
!25 = !{ptr @mlx5_rdma_setup_rn._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @mlx5i_nic_profile, !27, !"mlx5i_nic_profile", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/ipoib/ipoib.c", i32 435, i32 35}
!28 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/ipoib/ipoib.c", i32 375, i32 3}
!30 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @mlx5i_init_rx._entry, !29, !"_entry", i1 false, i1 false}
!33 = !{ptr @mlx5i_init_rx._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/ipoib/ipoib.c", i32 333, i32 28}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/ipoib/ipoib.c", i32 340, i32 28}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/ipoib/ipoib.c", i32 296, i32 3}
!40 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @mlx5i_init_tx._entry, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @mlx5i_init_tx._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/ipoib/ipoib.c", i32 302, i32 3}
!45 = !{ptr @mlx5i_init_tx._entry.19, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @mlx5i_init_tx._entry_ptr.21, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @mlx5i_stats_grps, !48, !"mlx5i_stats_grps", i1 false, i1 false}
!48 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/ipoib/ipoib.c", i32 414, i32 26}
!49 = distinct !{null, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../include/linux/netdevice.h", i32 4690, i32 9}
!51 = !{ptr @.str.23, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/ipoib/ipoib.c", i32 600, i32 2}
!53 = !{ptr @.str.24, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @mlx5i_attach_mcast.__UNIQUE_ID_ddebug661, !52, !"__UNIQUE_ID_ddebug661", i1 false, i1 false}
!56 = !{ptr @.str.26, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/ipoib/ipoib.c", i32 604, i32 3}
!58 = !{ptr @mlx5i_attach_mcast._entry, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @mlx5i_attach_mcast._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.27, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/ipoib/ipoib.c", i32 608, i32 3}
!62 = !{ptr @mlx5i_attach_mcast.__UNIQUE_ID_ddebug662, !61, !"__UNIQUE_ID_ddebug662", i1 false, i1 false}
!63 = !{ptr @.str.28, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/ipoib/ipoib.c", i32 624, i32 2}
!65 = !{ptr @.str.29, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @mlx5i_detach_mcast.__UNIQUE_ID_ddebug663, !64, !"__UNIQUE_ID_ddebug663", i1 false, i1 false}
!67 = !{ptr @.str.30, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/ipoib/ipoib.c", i32 629, i32 3}
!69 = !{ptr @mlx5i_detach_mcast.__UNIQUE_ID_ddebug664, !68, !"__UNIQUE_ID_ddebug664", i1 false, i1 false}
!70 = !{!"sp"}
!71 = !{i32 1, !"wchar_size", i32 2}
!72 = !{i32 1, !"min_enum_size", i32 4}
!73 = !{i32 8, !"branch-target-enforcement", i32 0}
!74 = !{i32 8, !"sign-return-address", i32 0}
!75 = !{i32 8, !"sign-return-address-all", i32 0}
!76 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!77 = !{i32 7, !"uwtable", i32 1}
!78 = !{i32 7, !"frame-pointer", i32 2}
!79 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!80 = !{i8 0, i8 2}
!81 = !{i64 2149187189, i64 2149187194, i64 2149187207, i64 2149187251, i64 2149187285, i64 2149187306}
